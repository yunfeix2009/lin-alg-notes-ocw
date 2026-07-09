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