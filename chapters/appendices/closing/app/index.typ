#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Applications],
  route: "app",
)

+ Machine Learning
  + Algorithms such as backpropagation and gradient descent make use of tools in matrix calculus @sec:mat-calc.
  + Transformer architecture make heavy use of vectors and weight matrices.
+ Data Science
  + Least Squares @sec:lsa
  + Singular Value Decomposition @sec:svd
+ Computer Science
  + Computer Graphics
    + Projection of $RR^2$ to $RR^3$ and back @sec:cam-geo
  + Computer Vision
    + OCR
    + Image compression @sec:image
    + Object (facial) detection
  + Signal Processing @sec:fourier
  + Search Engines
+ Physics
  + Matrix mechanics in Quantum Mechanics
  + Spacetime vectors in General Relativity (and the use of tensors)
  + Lorenz transformation's matrix form
+ Robotics
  + Coordinate transformations in robotic arms @sec:change
+ Engineering
  + Optimization with matrix calculus @sec:app-mat-calc
  + Circuits and kirchhoff's rules @sec:graph
+ Finance
  + Covariance matrices and portfolio optimization
  + Markov chains @emp:markov
