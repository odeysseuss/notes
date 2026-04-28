#import "/utils/math.typ": *

#set page(numbering: "1")
#set par(leading: 1.2em)
#set text(font: "Maple Mono NF")
#show math.equation: set text(font: "Fira Math")
#show math.equation: set align(left)

#align(center)[#underline(text(
    weight: "bold",
    size: 22pt,
    fill: blue,
  )[Trigonometry])
]

\
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
+ $ sin(A + B) = sin A cos B + cos A sin B $
+ $ sin(A - B) = sin A cos B - cos A sin B $
+ $ cos(A + B) = cos A cos B - sin A sin B $
+ $ cos(A - B) = cos A cos B + sin A sin B $
+ $ tan(A + B) = frac(tan A + tan B, 1 - tan A tan B) $
+ $ tan(A - B) = frac(tan A - tan B, 1 + tan A tan B) $
+ $ cot(A + B) = frac(cot A cot B - 1, cot B + cot A) $
+ $ cot(A - B) = frac(cot A cot B + 1, cot B - cot A) $
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
    arctan x + arctan y &= arctan(frac(x + y, 1 - x y)), x y < 1 \
    &= pi + arctan(frac(x + y, 1 - x y)), x y > 1, x > 0, y > 0 \
    &= -pi + arctan(frac(x + y, 1- x y)), x y > 1, x < 0, y < 0
  $
+ $ arctan x - arctan y = arctan(frac(x - y, 1 + x y)) $
+ $ 2 arcsin x = arcsin(2x sqrt(1 - x^2)) $
+ $ 2 arccos x = arccos(2x^2 - 1) $
+ $
    2 arctan x = arctan(frac(2x, 1 - x^2)) = arccos(frac(1 - x^2, 1 + x^2)) = arcsin(frac(2x, 1 + x^2))
  $
+ $ 3 arcsin x = arcsin(3x - 4x^3) $
+ $ 3 arccos x = arccos(4x^3 - 3x) $
