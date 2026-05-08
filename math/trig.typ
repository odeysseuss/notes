#import "/utils/math.typ": *
#import "/utils/template.typ": conf
#import "@preview/cetz:0.5.0"

#show: conf.with(title: "Trigonometry")
#show math.equation: set align(left)

= Domain/Range of trig functions
\
#table(
  columns: (auto, auto, auto),
  [], [*Domain*], [*Range*],
  [$sin theta$], [$RR$], [$[-1, 1]$],
  [$cos theta$], [$RR$], [$[-1 ,1]$],
  [$tan theta$], [$RR - {(2n + 1)pi/2}$], [$RR$],
  [$cot theta$], [$RR - {n pi}$], [$RR$],
  [$csc theta$], [$RR - {n pi}$], [$RR - (-1, 1)$],
  [$sec theta$], [$RR - {(2n + 1)pi/2}$], [$RR - (-1, 1)$],
)

\
= Trigonometric Formulas
\
+ $ sin(A plus.minus B) = sin A cos B plus.minus cos A sin B $
+ $ cos(A plus.minus B) = cos A cos B minus.plus sin A sin B $
+ $
    tan(A plus.minus B) = frac(tan A plus.minus tan B, 1 minus.plus tan A tan B)
  $
+ $
    cot(A plus.minus B) = frac(cot A cot B minus.plus 1, cot B plus.minus cot A)
  $
+ $ sin(A + B) + sin(A - B) = 2 sin A cos B $
+ $ sin(A + B) - sin(A - B) = 2 cos A sin B $
+ $ cos(A + B) + cos(A - B) = 2 cos A cos B $
+ $ cos(A + B) - cos(A - B) = -2 sin A sin B $
+ $ sin(A + B) dot sin(A - B) = sin^2 A - sin^2 B = cos^2 B - cos^2 A $
+ $ cos(A + B) dot cos(A - B) = cos^2 A - sin^2 B = cos^2 B - sin^2 A $
+ $ sin C + sin D = 2 sin(frac(C + D, 2)) dot cos(frac(C - D, 2)) $
+ $ sin C - sin D = 2 cos(frac(C + D, 2)) dot sin(frac(C - D, 2)) $
+ $ cos C + cos D = 2 cos(frac(C + D, 2)) dot cos(frac(C - D, 2)) $
+ $ cos C - cos D = 2 sin(frac(C + D, 2)) dot sin(frac(D - C, 2)) $
+ $ sin 2 A = 2 sin A cos A = frac(2 tan A, 1 + tan^2 A) $
+ $
    cos 2 A = cos^2 A - sin^2 A = 1 - 2 sin^2 A = frac(1 - tan^2 A, 1 + tan^2 A)
  $
+ $ tan 2 A = frac(2 tan A, 1 - tan^2 A) $
+ $ sin 3 A = 3 sin A - 4 sin^3 A $
+ $ cos 3 A = 4 cos^3 A - 3 cos A $
+ $ tan 3 A = frac(3 tan A - tan^3 A, 1 - 3 tan^2 A) $
+ $ cot 3 A = frac(cot^3 A - 3 cot A, 3 cot^2 A - 1) $
+ $ tan^2 A = frac(1 - cos 2 A, 1 + cos 2 A) $

\
= Value of #sym.theta
\
+ $ sin theta = sin alpha ==> theta = n pi + (-1)^n alpha $
+ $ cos theta = cos alpha ==> theta = 2n pi plus.minus alpha $
+ $ tan theta = tan alpha ==> theta= n pi plus alpha $
+ $ sin theta = 0 ==> theta = n pi $
+ $ cos theta = 0 ==> theta = (2n + 1)pi/2 $
+ $ tan theta = 0 ==> theta = n pi $
+ $ sin theta = 1 ==> theta = (4n + 1)pi/2 $
+ $ cos theta = 1 ==> theta = 2 n pi $

\
= Properties of a triangles
\
#cetz.canvas({
  import cetz.draw: *

  let a = (-2.5, 0)
  let b = (2.5, 0)
  let c = (0, 3)

  line(a, b, c, close: true, name: "tri")

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

\
== Law of Sines:
$ frac(a, sin A) = frac(b, sin B) = frac(c, sin C) $
\
== Law of Cosines:
+ $ a^2 = b^2 + c^2 - 2 b c cos A ==> cos A = frac(b^2 + c^2 - a^2, 2 b c) $
+ $ b^2 = a^2 + c^2 - 2 a c cos B ==> cos B = frac(a^2 + c^2 - b^2, 2 a c) $
+ $ c^2 = a^2 + b^2 - 2 a b cos C ==> cos C = frac(a^2 + b^2 - c^2, 2 a b) $
\
== Projection Rule:
+ $ a = b cos C + c cos B $
+ $ b = c cos A + a cos C $
+ $ c = a cos B + b cos A $
\
== Napier's analogy:
+ $ tan(frac(B - C, 2)) = frac(b - c, b + c) cot frac(A, 2) $
+ $ tan(frac(C - A, 2)) = frac(c - a, c + a) cot frac(B, 2) $
+ $ tan(frac(A - B, 2)) = frac(a - b, a + b) cot frac(C, 2) $

\
= Domain/Range of inverse trig functions
\
#table(
  columns: (auto, auto, auto),
  [], [*Domain*], [*Range*],
  [$arcsin theta$], [$[-1, 1]$], [$[-pi/2 , pi/2]$],
  [$arccos theta$], [$[-1 ,1]$], [$[0, pi]$],
  [$arctan theta$], [$RR$], [$[-pi/2, pi/2]$],
  [$arccot theta$], [$RR$], [$(0, pi)$],
  [$arccsc theta$],
  [$(-infinity, -1] union [1, infinity)$],
  [$[-pi/2, pi/2] - {0}$],

  [$arcsec theta$],
  [$(-infinity, -1] union [1, infinity)$],
  [$[0, pi] - {pi/2}$],
)

\
= Inverse Trigonometric Formulas
\
+ $ arcsin x = arccsc(1/x) $
+ $ arccos x = arcsec(1/x) $
+ $
    arctan x & = arccot(1/x), x > 0 \
             & = arccot(1/x) - pi, x < 0 \
             & = 0, x = 0
  $
+ $ arcsin(-x) = -arcsin x $
+ $ arccos(-x) = pi - arccos x $
+ $ arctan(-x) = -arctan x $
+ $ arccot(-x) = pi - arccot x $
+ $ arccsc(-x) = -arccsc x $
+ $ arcsec(-x) = pi - arcsec x $
+ $ arcsin x + arccos x = pi/2 $
+ $ arctan x + arccot x = pi/2 $
+ $ arccsc x + arcsec x = pi/2 $
+ $ arcsin x + arcsin y = arcsin(x sqrt(1 - y^2) + y sqrt(1 - x^2)) $
+ $ arcsin x - arcsin y = arcsin(x sqrt(1 - y^2) - y sqrt(1 - x^2)) $
+ $ arccos x + arccos y = arccos(x y - sqrt(1 - x^2)sqrt(1 - y^2)) $
+ $ arccos x - arccos y = arccos(x y + sqrt(1 - x^2)sqrt(1 - y^2)) $
+ $
    arctan x + arctan y & = arctan(frac(x + y, 1 - x y)), x y < 1 \
    & = pi + arctan(frac(x + y, 1 - x y)), x y > 1, x > 0, y > 0 \
    & = -pi + arctan(frac(x + y, 1- x y)), x y > 1, x < 0, y < 0
  $
+ $ arctan x - arctan y = arctan(frac(x - y, 1 + x y)) $
+ $ 2 arcsin x = arcsin(2x sqrt(1 - x^2)) $
+ $ 2 arccos x = arccos(2x^2 - 1) $
+ $
    2 arctan x = arctan(frac(2x, 1 - x^2)) = arccos(frac(1 - x^2, 1 + x^2)) = arcsin(frac(2x, 1 + x^2))
  $
+ $ 3 arcsin x = arcsin(3x - 4x^3) $
+ $ 3 arccos x = arccos(4x^3 - 3x) $
