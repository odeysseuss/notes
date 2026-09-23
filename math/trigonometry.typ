#import "/utils/template.typ": *
#import "/utils/math.typ": *
#import "@preview/cetz:0.5.0"

#show: conf.with(title: "Trigonometry")
#show math.equation.where(block: true): set align(left)

= Trigonometry

== Domain/Range of trig functions

#table(
  columns: (auto, auto, auto),
  [*Identities*], [*Domain*], [*Range*],
  [$sin theta$], [$RR$], [$[-1, 1]$],
  [$cos theta$], [$RR$], [$[-1 ,1]$],
  [$tan theta$], [$RR without {(2n + 1)pi/2}$], [$RR$],
  [$cot theta$], [$RR without {n pi}$], [$RR$],
  [$sec theta$], [$RR without {(2n + 1)pi/2}$], [$RR without {0}$],
  [$csc theta$], [$RR without {n pi}$], [$RR without {0}$],
)

== Trigonometric Formulas

// fundamental definitions
+ $ sin theta = "Opposite"/"Hypotenuse" $
+ $ cos theta = "Adjacent"/"Hypotenuse" $
+ $ tan theta = "Opposite"/"Adjacent" $
+ $ cot theta = "Adjacent"/"Opposite" $
+ $ sec theta = "Hypotenuse"/"Adjacent" $
+ $ csc theta = "Hypotenuse"/"Opposite" $
+ $ "function"(pi/2 - theta) = "co-function"(theta) $
// reciprocal relations
+ $ sin theta = frac(1, csc theta) $
+ $ cos theta = frac(1, sec theta) $
+ $ tan theta = frac(1, cot theta) = frac(sin theta, cos theta) $
+ $ cot theta = frac(1, tan theta) = frac(cos theta, sin theta) $
+ $ sec theta = frac(1, cos theta) $
+ $ csc theta = frac(1, sin theta) $
// parity & symmetry
+ $ sin(-x) = -sin x $
+ $ cos(-x) = cos x $
+ $ tan(-x) = -tan x $
+ $ cot(-x) = -cot x $
+ $ sec(-x) = sec x $
+ $ csc(-x) = -csc x $
// pythagorean identities
+ $ sin^2 x + cos^2 x = 1 $
+ $ sec^2 x - tan^2 x = 1 $
+ $ csc^2 x - cot^2 x = 1 $
// sum and difference formulas
+ $ sin(A plus.minus B) = sin A cos B plus.minus cos A sin B $
+ $ cos(A plus.minus B) = cos A cos B minus.plus sin A sin B $
+ $
    tan(A plus.minus B) = frac(tan A plus.minus tan B, 1 minus.plus tan A tan B)
  $
+ $
    cot(A plus.minus B) = frac(cot A cot B minus.plus 1, cot B plus.minus cot A)
  $

+ $
    sin(A + B) dot sin(A - B) & = sin^2 A - sin^2 B \
                              & = cos^2 B - cos^2 A
  $
+ $
    cos(A + B) dot cos(A - B) & = cos^2 A - sin^2 B \
                              & = cos^2 B - sin^2 A
  $
// product to sum formulas
+ $ 2 sin A cos B = sin(A + B) + sin(A - B) $
+ $ 2 cos A sin B = sin(A + B) - sin(A - B) $
+ $ 2 cos A cos B = cos(A + B) + cos(A - B) $
+ $ 2 sin A sin B = cos(A - B) - cos(A + B) $
// sum to product formulas
+ $ sin C + sin D = 2 sin(frac(C + D, 2)) dot cos(frac(C - D, 2)) $
+ $ sin C - sin D = 2 cos(frac(C + D, 2)) dot sin(frac(C - D, 2)) $
+ $ cos C + cos D = 2 cos(frac(C + D, 2)) dot cos(frac(C - D, 2)) $
+ $ cos C - cos D = 2 sin(frac(C + D, 2)) dot sin(frac(D - C, 2)) $
// double angle formulas
+ $ sin 2A = 2 sin A cos A = frac(2 tan A, 1 + tan^2 A) $
+ $
    cos 2A = cos^2 A - sin^2 A = frac(1 - tan^2 A, 1 + tan^2 A) \
    1 - cos 2A = 2 sin^2 A \
    1 + cos 2A = 2 cos^2 A \
    tan^2 A = frac(1 - cos 2A, 1 + cos 2A)
  $
+ $ tan 2A = frac(2 tan A, 1 - tan^2 A) $
+ $ cot 2A = frac(cot^2 A - 1, 2 cot A) $
// triple angle formulas
+ $ sin 3A = 3 sin A - 4 sin^3 A $
+ $ cos 3A = 4 cos^3 A - 3 cos A $
+ $ tan 3A = frac(3 tan A - tan^3 A, 1 - 3 tan^2 A) $
+ $ cot 3A = frac(cot^3 A - 3 cot A, 3 cot^2 A - 1) $

== Value of #sym.theta

+ $ sin theta = sin alpha ==> theta = n pi + (-1)^n alpha $
+ $ cos theta = cos alpha ==> theta = 2n pi plus.minus alpha $
+ $ tan theta = tan alpha ==> theta= n pi plus alpha $
+ $ sin theta = 0 ==> theta = n pi $
+ $ cos theta = 0 ==> theta = n pi + pi/2 = (2n + 1)pi/2 $
+ $ tan theta = 0 ==> theta = n pi $
+ $ sin theta = 1 ==> theta = 2 n pi + pi/2 = (4n + 1)pi/2 $
+ $ cos theta = 1 ==> theta = 2 n pi $

= Properties of a triangles

#cetz.canvas({
  import cetz.draw: *

  let a = (-2.5, 0)
  let b = (2.5, 0)
  let c = (0, 3)

  line(a, b, c, close: true, name: "tri", stroke: rgb(colors.light))

  // north -> below the point
  // south -> above the point
  // east -> left of the point
  // west -> right of the point
  content(a, [ $A$ ], anchor: "east", padding: .2)
  content(b, [ $B$ ], anchor: "west", padding: .2)
  content(c, [ $C$ ], anchor: "south", padding: .2)

  content((b, 50%, c), [ $a$ ], anchor: "west", padding: .2)
  content((a, 50%, c), [ $b$ ], anchor: "east", padding: .2)
  content((a, 50%, b), [ $c$ ], anchor: "north", padding: .2)
})

== Area of a triangle

+ $ Delta = 1/2 a b sin C = 1/2 b c sin A = 1/2 c a sin B $
+ $ Delta = sqrt(s(s - a)(s - b)(s - c)) quad s = frac(a + b + c, 2) $

== Law of Sines:

$
  frac(a, sin A) = frac(b, sin B) = frac(c, sin C) = 2R \
  "where circumradius", R = frac(a b c, 4 Delta)
$

== Law of Cosines:

+ $ a^2 = b^2 + c^2 - 2 b c cos A ==> cos A = frac(b^2 + c^2 - a^2, 2 b c) $
+ $ b^2 = a^2 + c^2 - 2 a c cos B ==> cos B = frac(a^2 + c^2 - b^2, 2 a c) $
+ $ c^2 = a^2 + b^2 - 2 a b cos C ==> cos C = frac(a^2 + b^2 - c^2, 2 a b) $

== Projection Rule:

+ $ a = b cos C + c cos B $
+ $ b = c cos A + a cos C $
+ $ c = a cos B + b cos A $

== Napier's analogy:

+ $ tan(frac(B - C, 2)) = frac(b - c, b + c) cot frac(A, 2) $
+ $ tan(frac(C - A, 2)) = frac(c - a, c + a) cot frac(B, 2) $
+ $ tan(frac(A - B, 2)) = frac(a - b, a + b) cot frac(C, 2) $

== Half Angle Formulas:

+ $ sin(A/2) = sqrt(frac((s - b)(s - c), b c)) $
+ $ cos(A/2) = sqrt(frac(s(s - a), b c)) $
+ $
    tan(A/2) = sqrt(frac((s - b)(s - c), s(s - a))) = frac(r, (s - a)) \
    "where inradius", r = 4R sin(A/2)sin(B/2)sin(C/2)
  $

= Inverse Trigonometry

== Domain/Range of inverse trig functions

#table(
  columns: (auto, auto, auto),
  [*Identities*], [*Domain*], [*Range*],
  [$arcsin x$], [$[-1, 1]$], [$[-pi/2 , pi/2]$],
  [$arccos x$], [$[-1 ,1]$], [$[0, pi]$],
  [$arctan x$], [$RR$], [$[-pi/2, pi/2]$],
  [$arccot x$], [$RR$], [$(0, pi)$],
  [$arccsc x$], [$RR without {0}$], [$[-pi/2, pi/2] without {0}$],
  [$arcsec x$], [$RR without {0}$], [$[0, pi] without {pi/2}$],
)

== Inverse Trigonometric Formulas

// reciprocal relations
+ $ arcsin x = arccsc(1/x) $
+ $ arccos x = arcsec(1/x) $
+ $ arctan x = arccot(1/x) $
+ $ arccot x = arctan(1/x) $
+ $ arcsec x = arccos(1/x) $
+ $ arccsc x = arcsin(1/x) $

// parity and symmetry
+ $ arcsin(-x) = -arcsin x $
+ $ arccos(-x) = pi - arccos x $
+ $ arctan(-x) = -arctan x $
+ $ arccot(-x) = pi - arccot x $
+ $ arcsec(-x) = pi - arcsec x $
+ $ arccsc(-x) = -arccsc x $

// sum and difference formulas
+ $ arcsin x + arccos x = pi/2 $
+ $ arctan x + arccot x = pi/2 $
+ $ arcsec x + arccsc x = pi/2 $
+ $ arcsin x plus.minus arcsin y = arcsin(x sqrt(1 - y^2) plus.minus y sqrt(1 - x^2)) $
+ $ arccos x plus.minus arccos y = arccos(x y minus.plus sqrt(1 - x^2)sqrt(1 - y^2)) $
+ $ arctan x plus.minus arctan y = arctan(frac(x plus.minus y, 1 minus.plus x y)) $

// multiple angle and transform relations
+ $ 2 arcsin x = arcsin(2x sqrt(1 - x^2)) = arccos(1 - 2x^2) $
+ $ 2 arccos x = arccos(2x^2 - 1) $
+ $ 2 arctan x = arctan(frac(2x, 1 - x^2)) = arcsin(frac(2x, 1 + x^2)) = arccos(frac(1 - x^2, 1 + x^2)) $
+ $ 3 arcsin x = arcsin(3x - 4x^3) $
+ $ 3 arccos x = arccos(4x^3 - 3x) $
+ $ 3 arctan x = arctan(frac(3x - x^3, 1 - 3x^2)) $

#note([
  *The Range Rule for Piecewise Conditions:*
  The base formulas above assume output angles stay strictly within the target function's principal range ("Safe Zone"):
  - $arcsin, arctan, arccsc in [-pi/2, pi/2]$ (Quadrants I & IV)
  - $arccos, arccot, arcsec in [0, pi]$ (Quadrants I & II)

  If evaluating a compound angle sum or multiple angle results in a value outside these bounds, adjust by adding or subtracting $pi$ or $2pi$ to pull the angle back into its principal interval.
])

= Hyperbolic Trigonometry

== Domain/Range of Hyperbolic Functions

#table(
  columns: (auto, auto, auto),
  [*Identities*], [*Domain*], [*Range*],
  [$sinh x$], [$RR$], [$RR$],
  [$cosh x$], [$RR$], [$[1, infinity)$],
  [$tanh x$], [$RR$], [$(-1, 1)$],
  [$coth x$], [$RR without {0}$], [$(-infinity, -1) union (1, infinity)$],
  [$csch x$], [$RR without {0}$], [$RR without {0}$],
  [$sech x$], [$RR$], [$(0, 1]$],
)

== Hyperbolic Trigonometric Formulas

// fundamental definitions
+ $ sinh x = frac(e^x - e^(-x), 2) $
+ $ cosh x = frac(e^x + e^(-x), 2) $
+ $ tanh x = frac(sinh x, cosh x) = frac(e^x - e^(-x), e^x + e^(-x)) $
+ $ coth x = frac(cosh x, sinh x) = frac(e^x + e^(-x), e^x - e^(-x)) $
+ $ sech x = frac(1, cosh x) = frac(2, e^x + e^(-x)) $
+ $ csch x = frac(1, sinh x) = frac(2, e^x - e^(-x)) $
+ $ cosh x + sinh x = e^x $
+ $ cosh x - sinh x = e^(-x) $
// reciprocal relations
+ $ sinh x = frac(1, csch x) $
+ $ cosh x = frac(1, sech x) $
+ $ tanh x = frac(1, coth x) = frac(sinh x, cosh x) $
+ $ coth x = frac(1, tanh x) = frac(cosh x, sinh x) $
+ $ sech x = frac(1, cosh x) $
+ $ csch x = frac(1, sinh x) $
// parity and symmetry
+ $ sinh(-x) = -sinh x $
+ $ cosh(-x) = cosh x $
+ $ tanh(-x) = -tanh x $
+ $ coth(-x) = -coth x $
+ $ sech(-x) = sech x $
+ $ csch(-x) = -csch x $
// pythagorean identities
+ $ cosh^2 x - sinh^2 x = 1 $
+ $ sech^2 x + tanh^2 x = 1 $
+ $ coth^2 x - csch^2 x = 1 $
// sum and difference formulas
+ $ sinh(x plus.minus y) = sinh x cosh y plus.minus cosh x sinh y $
+ $ cosh(x plus.minus y) = cosh x cosh y plus.minus sinh x sinh y $
+ $ tanh(x plus.minus y) = frac(tanh x plus.minus tanh y, 1 plus.minus tanh x tanh y) $
+ $ coth(x plus.minus y) = frac(coth x coth y plus.minus 1, coth y plus.minus coth x) $
// product to sum formulas
+ $ 2 sinh x cosh y = sinh(x + y) + sinh(x - y) $
+ $ 2 cosh x sinh y = sinh(x + y) - sinh(x - y) $
+ $ 2 cosh x cosh y = cosh(x + y) + cosh(x - y) $
+ $ 2 sinh x sinh y = cosh(x + y) - cosh(x - y) $
// sum to product formulas
+ $ sinh x + sinh y = 2 sinh(frac(x + y, 2)) dot cosh(frac(x - y, 2)) $
+ $ sinh x - sinh y = 2 cosh(frac(x + y, 2)) dot sinh(frac(x - y, 2)) $
+ $ cosh x + cosh y = 2 cosh(frac(x + y, 2)) dot cosh(frac(x - y, 2)) $
+ $ cosh x - cosh y = 2 sinh(frac(x + y, 2)) dot sinh(frac(x - y, 2)) $
// double angle formulas
+ $ sinh 2x = 2 sinh x cosh x = frac(2 tanh x, 1 - tanh^2 x) $
+ $
    cosh 2x = cosh^2 x + sinh^2 x = frac(1 + tanh^2 x, 1 - tanh^2 x) \
    cosh 2x + 1 = 2 cosh^2 x \
    cosh 2x - 1 = 2 sinh^2 x \
    tanh^2 x = frac(cosh 2x - 1, cosh 2x + 1)
  $
+ $ tanh 2x = frac(2 tanh x, 1 + tanh^2 x) $
+ $ coth 2x = frac(coth^2 x + 1, 2 coth x) $
// half angle formulas
+ $ sinh(x/2) = plus.minus sqrt(frac(cosh x - 1, 2)) $
+ $ cosh(x/2) = sqrt(frac(cosh x + 1, 2)) $
+ $ tanh(x/2) = frac(cosh x - 1, sinh x) = frac(sinh x, cosh x + 1) = sqrt(frac(cosh x - 1, cosh x + 1)) $
// triple angle formulas
+ $ sinh 3x = 3 sinh x + 4 sinh^3 x $
+ $ cosh 3x = 4 cosh^3 x - 3 cosh x $
+ $ tanh 3x = frac(3 tanh x + tanh^3 x, 1 + 3 tanh^2 x) $
// de moivre's analogue for hyperbolic functions
+ $ (cosh x plus.minus sinh x)^n = cosh(n x) plus.minus sinh(n x) = e^(plus.minus n x) $

= Inverse Hyperbolic Functions


== Domain/Range & Logarithmic Forms

#table(
  columns: (auto, auto, auto),
  [*Identities*], [*Domain*], [*Range*],
  [$arcsinh x$], [$RR$], [$RR$],
  [$arccosh x$], [$[1, infinity)$], [$[0, infinity)$],
  [$arctanh x$], [$(-1, 1)$], [$RR$],
  [$arccoth x$], [$(-infinity, -1) union (1, infinity)$], [$RR without {0}$],
  [$arcsech x$], [$(0, 1]$], [$[0, infinity)$],
  [$arccsch x$], [$RR without {0}$], [$RR without {0}$],
)

== Inverse Hyperbolic Trigonometric Formulas

// logarithmic representations
+ $ arcsinh x = ln(x + sqrt(x^2 + 1)) $
+ $ arccosh x = ln(x + sqrt(x^2 - 1)) $
+ $ arctanh x = 1/2 ln(frac(1 + x, 1 - x)) $
+ $ arccoth x = 1/2 ln(frac(x + 1, x - 1)) $
+ $ arcsech x = ln(frac(1 + sqrt(1 - x^2), x)) $
+ $ arccsch x = ln(frac(1, x) + sqrt(1/x^2 + 1)) $
// reciprocal relations
+ $ arcsinh(1/x) = arccsch x $
+ $ arccosh(1/x) = arcsech x $
+ $ arctanh(1/x) = arccoth x $
+ $ arccoth(1/x) = arctanh x $
+ $ arcsech(1/x) = arccosh x $
+ $ arccsch(1/x) = arcsinh x $
// parity and symmetry
+ $ arcsinh(-x) = -arcsinh x $
+ $ arccosh(-x) = pi - arccosh x $
+ $ arctanh(-x) = -arctanh x $
+ $ arccoth(-x) = -arccoth x $
+ $ arcsech(-x) = pi - arcsech x $
+ $ arccsch(-x) = -arccsch x $
// sum and difference formulas
+ $ arcsinh x plus.minus arcsinh y = arcsinh(x sqrt(1 + y^2) plus.minus y sqrt(1 + x^2)) $
+ $ arccosh x plus.minus arccosh y = arccosh(x y plus.minus sqrt((x^2 - 1)(y^2 - 1))) $
+ $ arctanh x + arctanh y = arctanh(frac(x + y, 1 + x y)) $
+ $ arctanh x - arctanh y = arctanh(frac(x - y, 1 - x y)) $
// multiple angle and transform relations
+ $ 2 arcsinh x = arccosh(2x^2 + 1) $
+ $ 2 arccosh x = arccosh(2x^2 - 1) $
+ $ 2 arctanh x = arctanh(frac(2x, 1 + x^2)) = arcsinh(frac(2x, 1 - x^2)) = arccosh(frac(1 + x^2, 1 - x^2)) $
