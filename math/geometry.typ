#import "/utils/template.typ": *
#import "/utils/math.typ": *

#show: conf.with(title: "Analytical Geometry")

\
= Coordinate geometry
\
- Cartesian coordinates $(x, y)$ to polar coordinates $(r, theta)$:
  $ r = sqrt(x^2 + y^2) $
  $
    theta & = arctan(y/x) quad "in quadrant I" \
          & = pi - arctan(abs(y/x)) quad "in quadrant II" \
          & = pi + arctan(abs(y/x)) quad "in quadrant III" \
          & = -arctan(abs(y/x)) quad "in quadrant IV"
  $
- Polar coordinates $(r, theta)$ to Cartesian coordinates $(x, y)$:
  $ x = r cos theta $
  $ y = r sin theta $
- Distance between two points in Cartesian coordinates $P(x_1, y_1)$ and $Q(x_2, y_2)$:
  $ d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $
- Distance between two points in polar coordinates $P(r_1, theta_1)$ and $Q(r_2, theta_2)$:
  $ d = sqrt(r_1^2 + r_2^2 - 2 r_1 r_2 cos(theta_1 - theta_2)) $
- Section formula (internal division):
  $ x = frac(m_1 x_2 + m_2 x_1, m_1 + m_2), quad y = frac(m_1 y_2 + m_2 y_1, m_1 + m_2) $
- Section formula (external division):
  $ x = frac(m_1 x_2 - m_2 x_1, m_1 - m_2), quad y = frac(m_1 y_2 - m_2 y_1, m_1 - m_2) $
- Midpoint formula:
  $ M = (frac(x_1 + x_2, 2), frac(y_1 + y_2, 2)) $
- Area of triangle $A B C$ with vertices $(x_1, y_1), (x_2, y_2), (x_3, y_3)$:
  $
    Delta A B C = 1/2 mat(
      delim: "|",
      x_1, y_1, 1;
      x_2, y_2, 1;
      x_3, y_3, 1
    )
  $
- Centroid $G$ of triangle $A B C$ with vertices $(x_1, y_1), (x_2, y_2), (x_3, y_3)$:
  $ G = (frac(x_1 + x_2 + x_3, 3), frac(y_1 + y_2 + y_3, 3)) $
- Incenter $I$ of triangle $A B C$ with vertices $(x_1, y_1), (x_2, y_2), (x_3, y_3)$ and side lengths $a, b, c$:
  $ I = (frac(a x_1 + b x_2 + c x_3, a + b + c), frac(a y_1 + b y_2 + c y_3, a + b + c)) $
- Excenter $E_A$ opposite to vertex $A$:
  $ E_A = (frac(-a x_1 + b x_2 + c x_3, -a + b + c), frac(-a y_1 + b y_2 + c y_3, -a + b + c)) $
- Circumcenter $O$ of triangle $A B C$:
  $
    O = (frac(x_1 sin 2A + x_2 sin 2B + x_3 sin 2C, sin 2A + sin 2B + sin 2C), frac(y_1 sin 2A + y_2 sin 2B + y_3 sin 2C, sin 2A + sin 2B + sin 2C))
  $
- Orthocenter $H$ of triangle $A B C$:
  $
    H = (frac(x_1 tan A + x_2 tan B + x_3 tan C, tan A + tan B + tan C), frac(y_1 tan A + y_2 tan B + y_3 tan C, tan A + tan B + tan C))
  $
\
= Straight lines
\
- General form of a straight line:
  $ a x + b y + c = 0 $
- Slope ($m$) of a line passing through $(x_1, y_1), (x_2, y_2)$, making an angle $theta$ with the positive x-axis:
  $ m = tan theta = frac(y_2 - y_1, x_2 - x_1) $
- Slope-intercept form (slope $m$, y-intercept $c$):
  $ y = m x + c $
- Point-slope form (passes through $(x_1, y_1)$ with slope $m$):
  $ y - y_1 = m (x - x_1) $
- Two-point form (passes through $(x_1, y_1)$ and $(x_2, y_2)$):
  $ frac(y - y_1, y_2 - y_1) = frac(x - x_1, x_2 - x_1) $
- Intercept form (x-intercept $a$, y-intercept $b$):
  $ x/a + y/b = 1 $
- Normal (perpendicular) form (perpendicular distance from origin $p$, angle $alpha$ with positive x-axis):
  $ x cos alpha + y sin alpha = p $
- Parametric / symmetric form (distance $r$ from $(x_1, y_1)$ along angle $theta$):
  $ frac(x - x_1, cos theta) = frac(y - y_1, sin theta) = r $
- Conditions for $a_1 x + b_1 y + c_1 = 0$ and $a_2 x + b_2 y + c_2 = 0$ to be coincident:
  $ a_1/a_2 = b_1/b_2 = c_1/c_2 $
- Conditions for $a_1 x + b_1 y + c_1 = 0$ and $a_2 x + b_2 y + c_2 = 0$ to be parallel to each other:
  $ m_1 = m_2 => a_1/a_2 = b_1/b_2 eq.not c_1/c_2 $
- Equation of a line parallel to $a x + b y + c = 0$:
  $ a x + b y + k = 0 $
- Conditions for $a_1 x + b_1 y + c_1 = 0$ and $a_2 x + b_2 y + c_2 = 0$ to be perpendicular to each other:
  $ m_1 m_2 = -1 => a_1 a_2 + b_1 b_2 = 0 $
- Equation of a line orthogonal to $a x + b y + c = 0$:
  $ b x - a y + k = 0 $
- Angle between two lines with slopes $m_1$ and $m_2$:
  $ tan theta = plus.minus frac(m_1 - m_2, 1 + m_1 m_2) $
- Perpendicular distance from $(x_1, y_1)$ to $a x + b y + c = 0$:
  $ d = frac(abs(a x_1 + b y_1 + c), sqrt(a^2 + b^2)) $
- Perpendicular distance between two parallel lines $a x + b y + c_1 = 0$, $a x + b y + c_2 = 0$:
  $ d = frac(abs(c_1 - c_2), sqrt(a^2 + b^2)) $
- Foot of perpendicular $(h, k)$ from $(x_1, y_1)$ to $a x + b y + c = 0$:
  $ frac(h - x_1, a) = frac(k - y_1, b) = -frac(a x_1 + b y_1 + c, a^2 + b^2) $
- Image / reflection $(h, k)$ of $(x_1, y_1)$ in line $a x + b y + c = 0$:
  $ frac(h - x_1, a) = frac(k - y_1, b) = -2 frac(a x_1 + b y_1 + c, a^2 + b^2) $
- Equation of a line that bisects the angle between two intersecting lines ($a_1 x + b_1 y + c_1 = 0, a_2 x + b_2 y + c_2 = 0$):
  $ frac(a_1 x + b_1 y + c_1, sqrt(a_1^2 + b_1^2)) = plus.minus frac(a_2 x + b_2 y + c_2, sqrt(a_2^2 + b_2^2)) $
  + If $a_1 a_2 + b_1 b_2 > 0$:
    - The *$+$* sign gives the obtuse angle bisector.
    - The *$-$* sign gives the acute angle bisector.
  + If $a_1 a_2 + b_1 b_2 < 0$:
    - The *$+$* sign gives the acute angle bisector.
    - The *$-$* sign gives the obtuse angle bisector.
- Family of lines passing through the intersection of $L_1 = 0$ and $L_2 = 0$:
  $ L_1 + lambda L_2 = 0 $
- Conditions for concurrency of three lines ($a_1 x + b_1 y + c_1 = 0, a_2 x + b_2 y + c_2 = 0, a_3 x + b_3 y + c_3 = 0$):
  $
    mat(
      delim: "|",
      a_1, b_1, c_1;
      a_2, b_2, c_2;
      a_3, b_3, c_3
    ) = 0
  $
- Angle between a pair of straight lines passing through the origin ($a x^2 + 2h x y + b y^2 = 0$):
  $ tan theta = frac(2 sqrt(h^2 - a b), abs(a + b)) $
\
= Conics
\
- General equation of a conic:
  $
    & a x^2 + b y^2 + 2 h x y + 2 g x + 2 f y + c = 0 \
    & "If " mat(
        delim: "|",
        a, h, g;
        h, b, f;
        g, f, c
      ) = 0, "then it represents a pair of straight lines" \
    & "If " mat(
        delim: "|",
        a, h, g;
        h, b, f;
        g, f, c
      ) eq.not 0, \
    & => a = b, h = 0 -> "Circle" \
    & => a b - h^2 = 0 -> "Parabola" \
    & => a b - h^2 > 0 -> "Ellipse" \
    & => a b - h^2 < 0 -> "Hyperbola" \
  $
\
== Circle
\
- General equation of a circle:
  $ x^2 + y^2 + 2g x + 2f y + c = 0 $
  - Center: $(-g, -f)$
  - Radius: $sqrt(g^2 + f^2 - c)$
  - Length of x-axis intercept: $2 sqrt(g^2 - c)$
  - Length of y-axis intercept: $2 sqrt(f^2 - c)$
  - Touches x-axis: $g^2 = c$
  - Touches y-axis: $f^2 = c$
  - Touches both axes: $g^2 = f^2 = c$
  - Center on x-axis: $f = 0$
  - Center on y-axis: $g = 0$
  - Center at origin: $g = 0$ and $f = 0$
  - Passes through origin: $c = 0$
  - Touches x-axis at origin: $g = 0$ and $c = 0$
  - Touches y-axis at origin: $f = 0$ and $c = 0$
- Central form:
  $ (x - h)^2 + (y - k)^2 = r^2 quad "where center" = (h, k) " and radius" = r $
- Parametric forms:
  - For $x^2 + y^2 = r^2$:
    $ x = r cos(theta), quad y = r sin(theta) quad (0 <= theta < 2 pi) $
  - For $(x - h)^2 + (y - k)^2 = r^2$:
    $ x = h + r cos(theta), quad y = k + r sin(theta) $
- Diameter form (endpoints of diameter are $(x_1, y_1)$ and $(x_2, y_2)$):
  $ (x - x_1)(x - x_2) + (y - y_1)(y - y_2) = 0 $
- Position of a point $(x_1, y_1)$ relative to $S = x^2 + y^2 + 2g x + 2f y + c = 0$:
  $ "Let " S_1 = x_1^2 + y_1^2 + 2g x_1 + 2f y_1 + c $
  - Outside: $S_1 > 0$
  - On circumference: $S_1 = 0$
  - Inside: $S_1 < 0$
- Condition for tangency (line $y = m x + c$ to circle $x^2 + y^2 = r^2$):
  $ c = plus.minus r sqrt(1 + m^2) $
- Tangent in slope form:
  $ y = m x plus.minus r sqrt(1 + m^2) $
- Point of contact:
  $ (minus.plus frac(r m, sqrt(1 + m^2)), plus.minus frac(r, sqrt(1 + m^2))) $
- Equation of tangent at point $(x_1, y_1)$ on circle $S = 0$:
  $ T = 0 quad "where " T = x x_1 + y y_1 + g(x + x_1) + f(y + y_1) + c $
- Equation of normal at point $(x_1, y_1)$:
  - For $x^2 + y^2 = r^2$:
    $ y x_1 - x y_1 = 0 $
  - For $x^2 + y^2 + 2g x + 2f y + c = 0$:
    $ frac(x - x_1, x_1 + g) = frac(y - y_1, y_1 + f) $
- Length of tangent from external point $(x_1, y_1)$:
  $ L = sqrt(S_1) $
- Angle $theta$ between tangents drawn from external point $(x_1, y_1)$:
  $ tan(theta/2) = frac(r, sqrt(S_1)) $
- Pair of tangents from external point $(x_1, y_1)$:
  $ S dot S_1 = T^2 $
- Chord of contact from external point $(x_1, y_1)$:
  $ T = 0 $
- Chord bisected at given point $(x_1, y_1)$:
  $ T = S_1 $
- Area of the triangle formed by tangents and chord of contact given external point $(x_1, y_1)$ and radius $r$:
  $ Delta = frac(r dot S_1^(3/2), S_1 + r^2) $
- Director circle (locus of perpendicular tangents):
  - For circle $x^2 + y^2 = r^2$:
    $ x^2 + y^2 = 2 r^2 $
- Family of circles through intersections of circles $C_1 = 0$ and $C_2 = 0$:
  $ C_1 + k C_2 = 0 quad (k != -1) $
- Family of circles through intersections of circle $C = 0$ and line $L = 0$:
  $ C + k L = 0 $
- Equation of co-axial family of circles:
  $ S + lambda L = 0 " or " S_1 + lambda (S_1 - S_2) = 0 $
- Common chord of two circles $S = 0$ and $S' = 0$:
  $ S - S' = 0 $
- Radical axis of two circles $S = 0$ and $S' = 0$:
  $ S - S' = 0 $
- Radical center of three circles $S_1 = 0$, $S_2 = 0$, and $S_3 = 0$ taken two at a time:
  $ S_1 - S_2 = 0 " and " S_2 - S_3 = 0 " and " S_3 - S_1 = 0 $
- Angle of intersection between circles $C_1$ and $C_2$:
  $
    cos(theta) = frac(r_1^2 + r_2^2 - d^2, 2 r_1 r_2) = frac(2(g_1 g_2 + f_1 f_2) - (c_1 + c_2), 2 sqrt(g_1^2 + f_1^2 - c_1) sqrt(g_2^2 + f_2^2 - c_2))
  $
- Orthogonal intersection ($theta = 90 degree$):
  $ 2 g_1 g_2 + 2 f_1 f_2 = c_1 + c_2 $
- Relative position (centers $C_1, C_2$, radii $r_1, r_2$, center distance $d = C_1 C_2$):
  - One inside another (no intersection): $d < |r_1 - r_2|$
  - Touch internally (1 common tangent): $d = |r_1 - r_2|$
  - Intersect at two points (2 common tangents): $|r_1 - r_2| < d < r_1 + r_2$
  - Touch externally (3 common tangents): $d = r_1 + r_2$
  - Completely separate (4 common tangents): $d > r_1 + r_2$
- Length of common tangents:
  - Direct common tangent: $L_d = sqrt(d^2 - (r_1 - r_2)^2)$
  - Transverse common tangent: $L_t = sqrt(d^2 - (r_1 + r_2)^2)$
- Equation of a circle through 3 non-collinear points:
  $
    mat(
      delim: "|",
      x^2 + y^2, x, y, 1;
      x_1^2 + y_1^2, x_1, y_1, 1;
      x_2^2 + y_2^2, x_2, y_2, 1;
      x_3^2 + y_3^2, x_3, y_3, 1;
    ) = 0
  $
- Polar of a point $(x_1, y_1)$ with respect to $S = 0$:
  $ T = 0 $
- Pole of a line $l x + m y + n = 0$ with respect to $x^2 + y^2 = r^2$:
  $ (-frac(r^2 l, n), -frac(r^2 m, n)) $
- Points dividing the line joining centers internally and externally in the ratio of radii $(r_1 : r_2)$:
  - Internal center of similitude:
    $ (frac(r_1 x_2 + r_2 x_1, r_1 + r_2), frac(r_1 y_2 + r_2 y_1, r_1 + r_2)) $
  - External center of similitude:
    $ (frac(r_1 x_2 - r_2 x_1, r_1 - r_2), frac(r_1 y_2 - r_2 y_1, r_1 - r_2)) $
