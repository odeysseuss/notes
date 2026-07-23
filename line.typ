#import "/utils/template.typ": conf
#import "/utils/math.typ": *

#show: conf.with(title: "Straight Line")

\
= Coordinates
\
- Cartesian Coordinates $(x, y)$ to Polar Coordinates $(r, theta)$:
  $ r = sqrt(x^2 + y^2) $
  $
  theta &= arctan(y/x) quad "in Quadrant I" \
  &= pi - arctan(abs(y/x)) quad "in Quadrant II" \
  &= pi + arctan(abs(y/x)) quad "in Quadrant III" \
  &= -arctan(abs(y/x)) quad "in Quadrant IV"
  $
- Polar Coordinates $(r, theta)$ to Cartesian Coordinates $(x, y)$:
  $ x = r cos theta $
  $ y = r sin theta $
- Distance between two points in Cartesian Coordinates $P(x_1, y_1)$ and $Q(x_2, y_2)$:
  $ d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $
- Distance between two points in Polar Coordinates $P(r_1, theta_1)$ and $Q(r_2, theta_2)$:
  $ d = sqrt(r_1^2 + r_2^2 - 2 r_1 r_2 cos(theta_1 - theta_2)) $
- Section Formula (Internal Division):
  $ x = frac(m_1 x_2 + m_2 x_1, m_1 + m_2), quad y = frac(m_1 y_2 + m_2 y_1, m_1 + m_2) $
- Section Formula (External Division):
  $ x = frac(m_1 x_2 - m_2 x_1, m_1 - m_2), quad y = frac(m_1 y_2 - m_2 y_1, m_1 - m_2) $
- Midpoint Formula:
  $ M = (frac(x_1 + x_2, 2), frac(y_1 + y_2, 2)) $
- Area of Triangle ABC with vertices $(x_1, y_1), (x_2, y_2), (x_3, y_3)$:
  $ Delta A B C = 1/2 mat(delim: "|",
    x_1, y_1, 1;
    x_2, y_2, 1;
    x_3, y_3, 1
  ) $
- Centroid $G$ of Triangle ABC with vertices $(x_1, y_1), (x_2, y_2), (x_3, y_3)$:
  $ G = (frac(x_1 + x_2 + x_3, 3), frac(y_1 + y_2 + y_3, 3)) $
- Incenter $P$ of Triangle ABC with vertices $(x_1, y_1), (x_2, y_2), (x_3, y_3)$ and $a, b, c$ side lengths:
  $ P = (frac(a x_1 + b x_2 + c x_3, a + b + c), frac(a y_1 + b y_2 + c y_3, a + b + c)) $
- Excenter $E_A$ opposite to vertex $A$:
  $ E_A = (frac(-a x_1 + b x_2 + c x_3, -a + b + c), frac(-a y_1 + b y_2 + c y_3, -a + b + c)) $
- Circumcenter $O$ of Triangle ABC:
  $ O = (frac(x_1 sin 2A + x_2 sin 2B + x_3 sin 2C, sin 2A + sin 2B + sin 2C), frac(y_1 sin 2A + y_2 sin 2B + y_3 sin 2C, sin 2A + sin 2B + sin 2C)) $
- Orthocenter $H$ of Triangle ABC:
  $ H = (frac(x_1 tan A + x_2 tan B + x_3 tan C, tan A + tan B + tan C), frac(y_1 tan A + y_2 tan B + y_3 tan C, tan A + tan B + tan C)) $
\
= Straight Lines
\
- General Form of a Straight Line:
  $ a x + b y + c = 0 $
- Slope (m) of a line passing through $(x_1, y_1), (x_2, y_2)$, making an angle $theta$ with the positive x-axis:
  $ m = tan theta = frac(y_2 - y_1, x_2 - x_1) $
- Slope-Intercept Form (Slope $m$, y-intercept $c$):
  $ y = m x + c $
- Point-Slope Form (Passes through $(x_1, y_1)$ with slope $m$):
  $ y - y_1 = m (x - x_1) $
- Two-Point Form (Passes through $(x_1, y_1)$ and $(x_2, y_2)$):
  $ frac(y - y_1, y_2 - y_1) = frac(x - x_1, x_2 - x_1) $
- Intercept Form (x-intercept $a$, y-intercept $b$):
  $ x/a + y/b = 1 $
- Normal (Perpendicular) Form (Perpendicular distance from origin $p$, angle $alpha$ with positive x-axis):
  $ x cos alpha + y sin alpha = p $
- Parametric / Symmetric Form (Distance $r$ from $(x_1, y_1)$ along angle $theta$):
  $ frac(x - x_1, cos theta) = frac(y - y_1, sin theta) = r $
- Conditions for $a_1 x + b_1 y + c_1 = 0$ and $a_2 x + b_2 y + c_2 = 0$ to be coincident:
  $ a_1/a_2 = b_1/b_2 = c_1/c_2 $
- Conditions for $a_1 x + b_1 y + c_1 = 0$ and $a_2 x + b_2 y + c_2 = 0$ to be parallel to each other:
  $ m_1 = m_2 => a_1/a_2 = b_1/b_2 eq.not c_1/c_2 $
- The equation of a line parallel to $a x + b y + c = 0$:
  $ a x + b y + k = 0 $
- Conditions for $a_1 x + b_1 y + c_1 = 0$ and $a_2 x + b_2 y + c_2 = 0$ to be perpendicular to each other:
  $ m_1 m_2 = -1 => a_1 a_2 + b_1 b_2 = 0 $
- The equation of the line orthogonal to $a x + b y + c = 0$:
  $ b x - a y + k = 0 $
- The angle between two lines with slopes $m_1$ and $m_2$:
  $ tan theta = plus.minus frac(m_1 - m_2, 1 + m_1 m_2) $
- Perpendicular distance from $(x_1, y_1)$ to $a x + b y + c = 0$:
  $ d = frac(abs(a x_1 + b y_1 + c), sqrt(a^2 + b^2)) $
- Perpendicular distance between two parallel lines $a x + b y + c_1 = 0$, $a x + b y + c_2 = 0$:
  $ d = frac(abs(c_1 - c_2), sqrt(a^2 + b^2)) $
- Foot of Perpendicular $(h, k)$ from $(x_1, y_1)$ to $a x + b y + c = 0$:
  $ frac(h - x_1, a) = frac(k - y_1, b) = -frac(a x_1 + b y_1 + c, a^2 + b^2) $
- Image / Reflection $(h, k)$ of $(x_1, y_1)$ in line $a x + b y + c = 0$:
  $ frac(h - x_1, a) = frac(k - y_1, b) = -2 frac(a x_1 + b y_1 + c, a^2 + b^2) $
- Equation of a line that bisects the angle between two intersecting lines ($a_1 x + b_1 y + c_1 = 0, a_2 x + b_2 y + c_2 = 0$):
  $ frac(a_1 x + b_1 y + c_1, sqrt(a_1^2 + b_1^2)) = plus.minus frac(a_2 x + b_2 y + c_2, sqrt(a_2^2 + b_2^2)) $
  + If $a_1 a_2 + b_1 b_2 > 0$:
    - The *$+$* sign gives you obtuse angle bisector.
    - The *$-$* sign gives you acute angle bisector.
  + If $a_1 a_2 + b_1 b_2 < 0$:
    - The *$+$* sign gives you acute angle bisector.
    - The *$-$* sign gives you obtuse angle bisector.
- Family of lines passing through the intersection of $L_1 = 0$ and $L_2 = 0$:
  $ L_1 + lambda L_2 = 0 $
- Conditions for concurrency of three lines ($a_1 x + b_1 y + c_1 = 0, a_2 x + b_2 y + c_2 = 0, a_3 x + b_3 y + c_3 = 0$):
  $ mat(delim: "|",
    a_1, b_1, c_1;
    a_2, b_2, c_2;
    a_3, b_3, c_3
  ) = 0 $
- Pair of straight lines passing through origin ($a x^2 + 2h x y + b y^2 = 0$):
  $ tan theta = frac(2 sqrt(h^2 - a b), abs(a + b)) $
