#import "../../../lib.typ":*
== $vb(L U) $ Decomposition 

From elimination, we have a means to transform an invertible matrix $vb(A)$, to an upper triangle matrix $vb(U)$. By combining all the elimination steps into $vb(E)$, we reached the equation $ vb(E A = U). $ Since every single elimination step is invertible, and by the inverse rule$ (product_(i=1)^n vb(A)_n)^(-1) = product_(i=n)^1 vb(A)_n^(-1), $ $vb(E)$ is invertible. Let $ vb(L) := vb(E)^(-1)$, $ vb(A = L U). $

#theorem[
    $vb(L)$, the inverse of the elimination matrix $vb(E)$ is lower triangular, meaning $ forall j<i, vb(E)_(i j) = 0.  $
]
#proof[
    (Assume no row exchanges for now)
    We first show that $vb(e)$ is lower triangular. Examine each elementary elimination matrix, those that turns one element of the coefficient matrix into $0$, they are $vb(I)$ with the change of one element in the lower triangle, as elimination is a downward only process, later rows depending on the rows before. Thus, an elementary elimination matrix that turns $vb(A)_(i j)$ into zero, $vb(E)_(i j)$ could be written as $vb(I) - e_(i j)$, where $e_(i j)$ is a square matrix with $0$ everywhere besides the $(i j)$ position. 

    Notice $ vb(E)_(i j)^(-1) = vb(I) + e_(i J), $ as $ (vb(I) + e_(i j))(vb(I) - e_(i j)) = vb(I)^2 - e_(i j)^2 = vb(I). $
    Since $ vb(L) = vb(E)^(-1) = product_"reverse" vb(E)_(i j)^(-1), $ all that's left to show is that the product of lower triangle matrices is lower triangle. 

    From the column picture, the $i$-th column of the product is a combination of the left lower triangular matrix with the first $i-1$ columns having the coefficient $0$, due to the first $i-1$ elements in the $i$-th vector of the right lower triangular matrix being $0$. 
]

From this result, any invertible matrix could be factorized into the product of a lower triangular matrix and an upper triangular matrix, known as the $vb(L U)$ decomposition. 

We can also decompose $vb(A)=vb(L U)$ further by writing $vb(U)$ as $vb(D) vb(U) ^ prime$, converting the pivots of $vb(U)$ to ones. For example,

$ vb(A)=vb(L) vb(U) = mat(1,0;4,1) mat(2,1;0,3) =vb(L) vb(D) vb(U)^ prime = mat(1,0;4,1) mat(2,0;0,3) mat(1,1/2;0,1) $

Let's look at an example to get more insights about $vb(L U)$ decomposition and elimination.

#example[
    Do Gaussian elimination and calculate $vb(L U)$:

    $ mat(1,6,1,2; 2,3,3,1; 3,9,1,2; 5,3,2,2) $

    Try to find $vb(L)$ without multiplying the $E$'s and calculating the inverse of the product, while assuming there is no row exchanging operations.
]
#solution[
    The solution may seem strange or incorrect at first sight, since we are directly filling in the multiplier of each row operation into $L$, but we can figure this out later.

    Initially, we will set $vb(L)$ to the identity matrix. 
    
    $ vb(L)=mat(1,0,0,0; 0,1,0,0; 0,0,1,0; 0,0,0,1) $

    And we will fill in $vb(L)$ and $vb(U)$ row by row. 

    1. Eliminate row $2$: Subtract two times row $1$ from row $2$.
   
    $ vb(A)^prime = mat(1,6,1,2; 0,-9,1,-3; 3,9,1,2; 5,3,2,2) space vb(E)_(21)=mat(1,0,0,0; -2,1,0,0; 0,0,1,0; 0,0,0,1) $

    To reverse this step, we replace $-2$ with $2$, so let's fill $2$ into $L$. Now, 

    $ vb(L)=mat(1,0,0,0; 2,1,0,0; 0,0,1,0; 0,0,0,1) $

    2. Eliminate row $3$: subtract $3$ times row $1$ and $1$ times row $2$ from row $3$.

    $ vb(A)^(prime prime) = mat(1,6,1,2; 0,-9,1,-3; 0,0,-3,-1; 5,3,2,2) $

    Then fill in row $3$ of $L$ with the same method:

    $ vb(L)=mat(1,0,0,0; 2,1,0,0; 3,1,1,0; 0,0,0,1) $

    3. Eliminate row $4$: subtract $5$ times row $1$, $3$ times row $2$, and $2$ times row $3$ from row $4$.
   
    $ vb(U) = mat(1,6,1,2; 0,-9,1,-3; 0,0,-3,-1; 0,0,0,3) $

    Fill in the fourth row: 

    $ vb(L)=mat(1,0,0,0; 2,1,0,0; 3,1,1,0; 5,3,2,1) $

    Now it's time to check if this is correct. If you plug $vb(L) vb(U)$ into a calculator(who wants to do this by hand?), you will get the original matrix $vb(A)$, which means we get the correct decomposition.

    We can get a peak at why this is right by doing a simple example. Now we have a three by three matrix, and we perform the operations: 

    $ vb(E)_(3 2) = mat(1,0,0;0,1,0;0,-5,1) space vb(E)_(2 1)=mat(1,0,0;-2,1,0;0,0,1) $

    Merging the operations into one matrix gives us:

    $ vb(E)=vb(E)_(3 2) vb(E)_(2 1)=mat(1,0,0;-2,1,0;10,-5,1) $

    The $10$ here is ugly. It comes from accumulating $-2$ times row $1$ and $-5$ times row $2$(row $2$ includes $-2$ times row $1$).

    But let's see the inverse.

    $ vb(E)_(3 2)^(-1) = mat(1,0,0;0,1,0;0,5,1) space vb(E)_(2 1)^(-1) = mat(1,0,0;2,1,0;0,0,1) $
    
    $ vb(E)^(-1) =vb(E)_(2 1)^(-1) vb(E)_(3 2)^(-1) =mat(1,0,0; 2,1,0; 0,5,1) $

    Now, the ugly $10$ goes away. An intuitive comprehension is: At first, we are starting with the original matrix $vb(A)$. If we want to do all the operations at once, the third row need to include $10$ times the original row $1$ of $vb(A)$. However, when we are doing the inverses, we start with the resultant matrix. Row $2$ in the resultant matrix already include some multiple of row $1$, so we only need to add $5$ times row $2$ to row $3$, and are free from consideration for row $1$.

    We can see that $E^(-1)$ is basically just copying all the multipliers into the proper positions. I'm not doing a strict proof because my math is not that good. Please ask Saint Even to do it if you want.
]