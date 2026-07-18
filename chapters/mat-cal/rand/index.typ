#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Differentiation of Random Functions],
  route: "diff-rand",
)

Here, we explore what it really means to take the derivative of a probabilistic function. Thinking back about core properties of differentiation, it answers two key questions. How does the output perturb as the input perturbs? What terms are "higher order" to be ignored?

#example[
  $X(p) := op("Bet") (p)$ is a random function as $op("Bet")$, the Bernoulli distribution returns $1$ with the probability $p$ and $0$ with probability $1-p$.
]



applications:
+ sensitivity of a statistical quantity in a physical system with noise
+ maximize the probability of something

Although it is sometimes possible to analytically compute $E[p(x)]$, it is often easier to sample (such as random walk) or directly find the relationship between $dif f$ and $dif p$.

In physical science, , such as reaction rate, the model is inherently stochastic.

$ E[tilde(p)(x)] := dv(E[p(x)], p) $
