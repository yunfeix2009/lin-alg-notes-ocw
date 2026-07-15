from __future__ import annotations

import json
import re
from pathlib import Path

from bs4 import BeautifulSoup, Tag


BLOCK_SELECTORS = (
    "p",
    "li:not([role='doc-endnote'])",
    "h2",
    "h3",
    "h4",
    "h5",
    "h6",
    "figcaption",
    ".abstract",
    ".recommendation",
    ".display-math",
    ".thm-head",
    ".proof-head",
)
NOISE_SELECTORS = (
    ".page-nav",
    "sup[role='doc-backlink']",
    ".typst-multi-label-list",
    ".eq-tag",
    ".equation-tag-group",
    ".equation-tag-holder",
    ".page-source-heading",
    "script",
    "style",
)
SKIP_PATHS = {"404.html", "search/index.html", "page-not-found/index.html"}


def normalize(value: str) -> str:
    return re.sub(r"\s+", " ", value).strip()


def block_anchor(node: Tag, main: Tag) -> str:
    current: Tag | None = node
    while current is not None and current is not main:
        if current.get("id"):
            return str(current["id"])
        current = current.parent if isinstance(current.parent, Tag) else None
    previous = node.find_previous(lambda tag: isinstance(tag, Tag) and tag.get("id"))
    return str(previous["id"]) if isinstance(previous, Tag) else ""


def collect_pages(dist: Path) -> list[dict[str, object]]:
    pages: list[dict[str, object]] = []
    for path in sorted(dist.rglob("*.html")):
        rel = path.relative_to(dist).as_posix()
        if rel in SKIP_PATHS:
            continue
        soup = BeautifulSoup(path.read_text(encoding="utf-8"), "html.parser")
        main = soup.select_one("main.content")
        if not isinstance(main, Tag):
            continue
        for selector in NOISE_SELECTORS:
            for match in main.select(selector):
                match.decompose()
        title_node = main.select_one(".page-title")
        title = normalize(title_node.get_text(" ", strip=True) if title_node else "")
        if not title and soup.title:
            title = normalize(soup.title.get_text(" ", strip=True))
        blocks: list[dict[str, str]] = []
        seen: set[tuple[str, str]] = set()
        for selector in BLOCK_SELECTORS:
            for node in main.select(selector):
                text = normalize(node.get_text(" ", strip=True))
                key = (block_anchor(node, main), text.casefold())
                if not text or key in seen:
                    continue
                seen.add(key)
                blocks.append({"anchor": key[0], "html": str(node), "text": text})
        pages.append(
            {
                "title": title or "Untitled",
                "path": rel,
                "route": "" if rel == "index.html" else rel.removesuffix("index.html").rstrip("/"),
                "textNormalized": normalize(main.get_text(" ", strip=True)).casefold(),
                "blocks": blocks,
            }
        )
    return pages


def main() -> None:
    root = Path(__file__).resolve().parent
    dist = root / "dist"
    if not dist.is_dir():
        raise SystemExit("dist directory not found; compile the Typst bundle first")
    pages = collect_pages(dist)
    asset_dir = dist / "assets"
    asset_dir.mkdir(parents=True, exist_ok=True)
    payload = json.dumps({"pages": pages}, ensure_ascii=False, separators=(",", ":"))
    (asset_dir / "search-index.js").write_text(
        "window.SEARCH_INDEX = " + payload + ";\n", encoding="utf-8"
    )
    print(f"indexed {len(pages)} pages into {asset_dir / 'search-index.js'}")


if __name__ == "__main__":
    main()
