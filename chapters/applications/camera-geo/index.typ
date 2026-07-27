#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Camera Geometry],
  route: "cam-geo",
  label: <sec:cam-geo>,
)

A camera essentially projects $RR^3 -> RR^2$. Set the coordinate system with the focus of the lense as the origin and rectilinear system and the center of the projection plane to be the center of the lens. Let the coordinate axises for the $RR^3$ be $x y z$ and the projection to be $u v$, then, the new $x y$-coordinates are $ cases(y =( Y f)/z, x = (X f)/z, 1 = z/z) $ with $f$ being the focal length, distance from the origin to the plane of projection. Hence, we have the following relation with linear algebra, $ mat(f, 0, 0; 0, f, 0; 0, 0, 1) mat(X; Y; z) = mat(f X; f Y; z) ~ mat((f x)/z; (f y)/z; z). $


$mat(4 1920/6.4, 0, 1920/2; 0, 4 1080/4.8, 1080/2; 0, 0, 1) = mat()$

$f_x = f dot m_x$

#definition[
  The intrinsic matrix of a camera is $ vb(K) = mat(f_x, 0, c_x; 0, f_y, f_y; 0, 0, 1). $
]

#example[
  Find the intrinsic matrix $K$ of a cameral with physical focal length $4 m m$, sensor $6.4 m m times 4.9 m m$, resolution $1920 times 1080$ pixels.
]
