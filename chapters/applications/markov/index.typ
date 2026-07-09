#import "../../../lib.typ":*
== Markov Matrices 

This is section may roughly be described as the application of the eigenvalues and eigenvectors section on probability. 

#definition[
  A square matrix $vb(A)$ is a _Markov Matrix_ iff every entry is non-negative and the sum of each column is exactly $1$. 
]

Each column adding up to $1$ indicates that the markov matrix likely represents the probability of some sort. 

#theorem[
  At least one eigenvalue of a Markov matrix is $1$ and its corresponding eigenvector could be chosen such that it is non-negative in all components.  
]
#proof[
  We show that $ det(vb(A) - vb(I)) = 0. $ From @thm:eigentop, this is equivalent to $ det(vb(A)^top - vb(I)) = 0. $ This is because $ mat(1, 1, dots, 1) $ is in $N(vb(A)^top)$ and $rank(vb(A)) = rank(vb(A)^top)$. 

  The second part, however, was not proven by Strang and llm said something about stochastic. Thus, the proof not included here. 
]
#theorem[
  No eigenvalues of a Markov matrix is, in magnitude, greater than $1$. 
]

From these two theorems, borrowing the idea of steady state from the previous differential equations section, given iteration $ vb(u)_k = vb(A)^k  vb(u)_0, $ $ lim_(k-> oo) vb(u)_k = sum_(i "where" lambda_i = 1) c_i vb(x)_i. $

Its name suggests that Markov matrices likely connect with Markov chains, or in the literature of competitive math, states. We show a simple example. 
#example[
  Every year, $10%$ of the people from California move to Massachusetts while $20%$ of the people from Massachusetts move to California. Find an explicit formula for the population in each states in a given year and the steady state of the system, assuming these two states are the only two places containing people. 
]
#solution[
  Let $ vb(u):= mat(u_c; u_m). $ The recursive relation is $ vb(u)_(k+1) = mat(.9, .2; .1, .8) vb(u)_k, $ where $ vb(A):=mat(.9, .2; .1, .8) $ is a Markov matrix. 
  The characteristic equation of $vb(A)$ is $ det(vb(A) - lambda vb(I)) . $ Since $lambda_1 = 1$ and $trace vb(A) = sum_(lambda "eigenvalue") lambda$, $lambda_2 = .7$. Notice the eigenvector $ vb(x)_1 = mat(-2; 1), quad vb(x)_2 = mat(-1; 1), $ $ vb(u) &= c_1 lambda_1^(k) vb(x)_1 + c_2 lambda_2^(k) vb(x)_2 \ &= c_1 mat(-2; 1) + c_2 (.7)^k mat(-1; 1).  $ 

  The steady state occurs when $t-> oo$, the $c_2 (.7)^k mat(-1; 1)$ vanishes, leaving $ c_1 mat(-2, 1). $
]

The following example is from a recitation that resembles problem solving with Markov matrices more than the former example. 
#example[

A particle jumps between positions $A$ and $B$ with the following probabilities:
#align(center)[
  #cetz.canvas(length: 1cm, {
    import cetz.draw: *

    let A = (0, 0)
    let B = (4.6, 0)

    let r = .42

    circle(A, radius: r)
    content(A, text(size: 15pt)[$A$])

    circle(B, radius: r)
    content(B, text(size: 15pt)[$B$])

    // Cetz's bezier order is start, end, then its two control points.
    bezier(
      (-.28, .30),
      (-.28, -.30),
      (-1.62, 1.48),
      (-1.62, -1.18),
      stroke: (thickness: .9pt, cap: "round", join: "round"),
      mark: (end: ">"),
    )
    content((-1.56, 1.08), text(size: 12pt)[$0.6$])

    bezier(
      (.38, .22),
      (4.22, .22),
      (1.32, 1.18),
      (3.28, 1.18),
      stroke: (thickness: .9pt, cap: "round", join: "round"),
      mark: (end: ">"),
    )
    content((2.30, 1.30), text(size: 12pt)[$0.4$])

    bezier(
      (4.22, -.22),
      (.38, -.22),
      (3.28, -1.18),
      (1.32, -1.18),
      stroke: (thickness: .9pt, cap: "round", join: "round"),
      mark: (end: ">"),
    )
    content((2.30, -.55), text(size: 12pt)[$0.2$])

    bezier(
      (4.88, .30),
      (4.88, -.30),
      (6.22, 1.48),
      (6.22, -1.18),
      stroke: (thickness: .9pt, cap: "round", join: "round"),
      mark: (end: ">"),
    )
    content((6.16, 1.08), text(size: 12pt)[$0.8$])
  })
]

If it starts at $vb(A)$, what is the probability it is at
$vb(A)$ and $vb(B)$ after

+ 1 step 
+ $n$ steps
+  $infinity$ steps?
]
#solution[
  Let the probability distribution be described by $ vb(u):= mat(a; b). $ Then, the iteration is described by $ vb(u) (k+1) = vb(A u) (k), $ where $ vb(A) := mat(.6, .2; .4, .8). $
Since $vb(A)$ is a Markov matrix, its eigenvalues are $ (lambda_1, lambda_2) = (1, .4), $ corresponding to the eigenvectors $ mat(vb(x)_1, vb(x)_2) = mat(1, -1; 2, 1). $

Therefore, the general solution is $ vb(u) (k) = c_1 mat(1; 2) + c_2 (.4)^k mat(-1; 1). $ From the initial condition, $ vb(u)(0) = c_1 mat(1; 2) + c_2 mat(-1; 1) = mat(1; 0) ==> (c_1, c_2) = (1/3, -2/3). $

Going back to the question, 

+ $ vb(u) (1) = 1/3 mat(1; 2) -2/3 dot .4 dot mat(-1; 1). $
+ $ vb(u) (n) = 1/3 mat(1; 2) - 2/3 dot (.4)^n mat(-1; 1). $
+ $ lim_(n-> oo) vb(u) (n) = 1/3 mat(1; 2). $
]
