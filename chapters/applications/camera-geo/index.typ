#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Camera Geometry],
  route: "cam-geo",
)

A camera essentially projects $RR^3 -> RR^2$. Set the coordinate system with the focus of the lense as the origin and rectilinear system and the center of the projection plane to be the center of the lens. Let the coordinate axises for the $RR^3$ be $x y z$ and the projection to be $u v$, then, the new $x y$-coordinates are $ cases(y =( Y f)/z, x = (X f)/z, 1 = z/z) $ with $f$ being the focal length, distance from the origin to the plane of projection. Hence, we have the following relation with linear algebra, $ mat(f, 0, 0; 0, f, 0; 0, 0, 1) mat(X; Y; z) = mat(f X; f Y; z) ~ mat((f x)/z; (f y)/z; z). $
