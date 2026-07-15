#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Image Compression],
  route: "image",
  description: [Image Compression],
)
This section discusses how ideas in the Change of Basis, @sec:change, could be applied in image compression. Image compression, or just data compression in general, is an incredibly ubiquitous and important technology that facilitates almost everything that has to do with practical programming. 

Here, we examine compression with loss, JPEG, which stands for Joint Photographic Experts Group. Represent an image with a vector of numeric values (associated with each color) with length the total number of pixels. The basis for the vector space of the given number of pixels could be chosen as simply be $1$ for a certain pixel and the rest being $0$. 

However, there are many useful bases to have. For example, the vector with all $1$'s is extremely useful as by scaling this vector by the minimum of the numeric value of all pixels, a lot of vectors are saved. There are many other bases that would be useful. For example, the Fourier basis, columns of the Fourier matrix, @def:fourier and the wavelets basis with the $RR^8$ is as following, $
  vb(w)_1 = (1, 1, 1, 1, 1, 1, 1, 1)^top,
  quad
  vb(w)_2 = (1, 1, 1, 1, -1, -1, -1, -1)^top,
$

$
  vb(w)_3 = (1, 1, -1, -1, 0, 0, 0, 0)^top,
  quad
  vb(w)_4 = (0, 0, 0, 0, 1, 1, -1, -1)^top,
$

$
  vb(w)_5 = (1, -1, 0, 0, 0, 0, 0, 0)^top,
  quad
  vb(w)_6 = (0, 0, 1, -1, 0, 0, 0, 0)^top,
$

$
  vb(w)_7 = (0, 0, 0, 0, 1, -1, 0, 0)^top,
  quad
  vb(w)_8 = (0, 0, 0, 0, 0, 0, 1, -1)^top.
$.

The general process of compression is as following. Given the signal, through mathematical change of bases, represent the signal as a linear combination of the bases vectors. This is a lossless step. Then, assuming that many components of this new vector is close to $0$, the compression step takes all values below a certain threshold to be $0$, and this is where the loss of the compression occurs. 

The criteria for a good bases include being able to multiply a vector by them fast (encoding) and multiply by their inverse fast (decoding). Notice that the Fourier bases enable fast multiplication due to the Fast Fourier Transform, @sec:fft and the wavelets due to the Fast Wavelets Transform. 

Modernly, popular bases based algorithms are localized wavelets and discrete cosine basis (rather than the full Fourier basis) and a neural network learning what bases to use from the data. However, there are also non-linear encoders and decoders along with attention based representations. 