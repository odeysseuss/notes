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
== Terms Related to Conics
\
- *Focus (Plural: Foci):* A fixed point used to define the conic section. The set of
  all points on the curve maintains a constant ratio regarding their distance to the focus relative to the directrix.
- *Axis of Symmetry (Major/Transverse Axis):* The line passing through the focus (or foci)
  and perpendicular to the Directrix, dividing the conic into two symmetrical halves.
- *Directrix (Plural: Directrices):* A fixed line perpendicular to the axis of symmetry.
- *Latus Rectum:* The chord that passes through a focus, runs perpendicular to the major/transverse axis,
  and has both endpoints lying on the curve.
- *Vertex (Plural: Vertices):* The point or points where the conic section intersects its principal axis of symmetry.
- *Center:* The midpoint of the segment connecting the two foci (applies to circles, ellipses, and hyperbolas; parabolas do not have a center).
- *Eccentricity ($e$):* A measure of how much the conic section deviates from being a circle.
  $ e = frac("distance to focus", "distance to directrix") $
  - Circle: $e = 0$
  - Ellipse: $0 < e < 1$
  - Parabola: $e = 1$
  - Hyperbola: $e > 1$

\
== General equation of a conic
\
- $
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
    & => h^2 - a b < 0, quad a = b, h = 0 -> "Circle" \
    & => h^2 - a b < 0 -> "Ellipse" \
    & => h^2 - a b = 0 -> "Parabola" \
    & => h^2 - a b > 0 -> "Hyperbola" \
  $
- *General Expression of Conic ($S$):* $S$ represents the expression of the conic secrion
  equation when all terms are moved to one side so that the equation equals to zero. #ex([For a circle:])
  $ S = x^2 + y^2 + 2g x + 2f y + c $
- *Evaluating at a specific point ($S_1$):* $S_1$ is evaluated by substituting the coordinates
  of a specific given value $(x_1, y_1)$ directly into the expression $S$. #ex([For a circle:])
  $ S = x_1^2 + y_1^2 + 2g x_1 + 2f y_1 + c $
- *Tangent transformation operator ($T$):* $T$ is created by replacing the variables $(x, y)$ in
  the expression $S$ using a special set of rules with the give point $(x_1, y_1)$:
  #table(
    columns: (auto, auto),
    [*Term is S*], [*Term in T*],
    [$ x^2 $], [$ x x_1 $],
    [$ y^2 $], [$ y y_1 $],
    [$ 2 x $], [$ x + x_1 $],
    [$ 2 y $], [$ y + y_1 $],
    [$ 2 x y $], [$ x y_1 + x_1 y $],
    [$ c $], [$ c $],
  )
  #ex([For a circle:])
  $ S = x x_1 + y y_1 + g (x + x_1) + f (y + y_1) + c $

\
== Universal Conic Properties (Applied to Any Conic $S = 0$)
\
- Position of a point $(x_1, y_1)$ relative to conic $S$:
  - Outside: $S_1 > 0$ (for ellipse/circle)
  - On the curve: $S_1 = 0$
  - Inside: $S_1 < 0$ (for ellipse/circle)
- Equation of tangent at $(x_1, y_1)$ on $S = 0$:
  $ T = 0 $
- Chord of contact from an external point $(x_1, y_1)$:
  $ T = 0 $
- Pair of tangents from an external point $(x_1, y_1)$:
  $ S dot S_1 = T^2 $
- Chord bisected at a given point $(x_1, y_1)$:
  $ T = S_1 $
- Polar of a point $(x_1, y_1)$ with respect to $S = 0$:
  $ T = 0 $

\
== Circle
\
- General Equation: $x^2 + y^2 + 2g x + 2f y + c = 0$
  - Center: $(-g, -f)$
  - Radius: $r = sqrt(g^2 + f^2 - c)$
  - $x$-intercept length: $2 sqrt(g^2 - c)$
  - $y$-intercept length: $2 sqrt(f^2 - c)$
  - Touches $x$-axis: $g^2 = c$
  - Touches $y$-axis: $f^2 = c$
  - Touches both axes: $g^2 = f^2 = c$
  - Center on $x$-axis: $f = 0$
  - Center on $y$-axis: $g = 0$
  - Center at origin: $g = 0, f = 0$
  - Passes through origin: $c = 0$
  - Touches $x$-axis at origin: $g = 0, c = 0$
  - Touches $y$-axis at origin: $f = 0, c = 0$
- Central form:
  $ (x - h)^2 + (y - k)^2 = r^2 quad "where center" = (h, k), "radius" = r $
- Parametric form:
  - For $x^2 + y^2 = r^2$: $x = r cos theta, quad y = r sin theta quad (0 <= theta < 2 pi)$
  - For $(x - h)^2 + (y - k)^2 = r^2$: $x = h + r cos theta, quad y = k + r sin theta$
- Diameter form (endpoints $(x_1, y_1)$ and $(x_2, y_2)$):
  $ (x - x_1)(x - x_2) + (y - y_1)(y - y_2) = 0 $
- Condition for tangency ($y = m x + c$ to $x^2 + y^2 = r^2$):
  $ c = plus.minus r sqrt(1 + m^2) $
  - Tangent in slope form: $y = m x plus.minus r sqrt(1 + m^2)$
  - Point of contact: $ (minus.plus frac(r m, sqrt(1 + m^2)), plus.minus frac(r, sqrt(1 + m^2))) $
- Equation of normal at point $(x_1, y_1)$:
  - For $x^2 + y^2 = r^2$: $y x_1 - x y_1 = 0$
  - For $x^2 + y^2 + 2 g x + 2 f y + c = 0$: $frac(x - x_1, x_1 + g) = frac(y - y_1, y_1 + f)$
- Length of tangent from external point $(x_1, y_1)$:
  $ L = sqrt(S_1) $
- Angle $theta$ between tangents from external point $(x_1, y_1)$:
  $ tan(theta/2) = frac(r, sqrt(S_1)) $
- Area of triangle formed by tangents and chord of contact:
  $ Delta = frac(r dot S_1^(3/2), S_1 + r^2) $
- Director circle (locus of perpendicular tangents):
  - For $x^2 + y^2 = r^2$: $x^2 + y^2 = 2 r^2$
- Pole of line $l x + m y + n = 0$ with respect to $x^2 + y^2 = r^2$:
  $ (-frac(r^2 l, n), -frac(r^2 m, n)) $
- Family of Circles:
  - Through intersections of $C_1 = 0$ and $C_2 = 0$: $C_1 + k C_2 = 0 quad (k != -1)$
  - Through intersections of circle $C = 0$ and line $L = 0$: $C + k L = 0$
  - Co-axial family: $S + lambda L = 0$ or $S_1 + lambda (S_1 - S_2) = 0$
- Radical axis / common chord of two circles $s_1 = 0$ and $s_2 = 0$:
  $ S_1 - S_2 = 0 $
- Radical center of three circles $S_1 = 0, S_2 = 0, S_3 = 0$:
  Intersection of $S_1 - S_2 = 0$ and $S_2 - S_3 = 0$.
- Angle of intersection between circles $C_1$ and $C_2$:
  $
    cos theta = frac(r_1^2 + r_2^2 - d^2, 2 r_1 r_2) = frac(2(g_1 g_2 + f_1 f_2) - (c_1 + c_2), 2 sqrt(g_1^2 + f_1^2 - c_1) sqrt(g_2^2 + f_2^2 - c_2))
  $
  - Orthogonal intersection ($theta = 90^circle$): $2 g_1 g_2 + 2 f_1 f_2 = c_1 + c_2$
- Relative position of two circles (center distance $d = C_1 C_2$):
  - One inside another: $d < |r_1 - r_2|$ (0 common tangents)
  - Touch internally: $d = |r_1 - r_2|$ (1 common tangent)
  - Intersect at two points: $|r_1 - r_2| < d < r_1 + r_2$ (2 common tangents)
  - Touch externally: $d = r_1 + r_2$ (3 common tangents)
  - Separate: $d > r_1 + r_2$ (4 common tangents)
- lengths of common tangents:
  - Direct common tangent: $L_d = sqrt(d^2 - (r_1 - r_2)^2)$
  - Transverse common tangent: $L_t = sqrt(d^2 - (r_1 + r_2)^2)$
- Centers of similitude (divide center line in ratio $r_1 : r_2$):
  - Internal: $ (frac(r_1 x_2 + r_2 x_1, r_1 + r_2), frac(r_1 y_2 + r_2 y_1, r_1 + r_2)) $
  - External: $ (frac(r_1 x_2 - r_2 x_1, r_1 - r_2), frac(r_1 y_2 - r_2 y_1, r_1 - r_2)) $
- Circle through 3 non-collinear points:
  $
    mat(
      delim: "|",
      x^2 + y^2, x, y, 1;
      x_1^2 + y_1^2, x_1, y_1, 1;
      x_2^2 + y_2^2, x_2, y_2, 1;
      x_3^2 + y_3^2, x_3, y_3, 1;
    ) = 0
  $

\
== Parabola
\
#figure(
  image("../assets/math_geometry_parabola.png"),
  caption: $y^2 = 4a x$,
) <parabola>
\

#table(
  columns: (auto, auto, auto),
  [*Description*], [*$ y^2 = 4a x $*], [*$ x^2 = 4a y $*],
  [Coordinates of vertex], [$ (0, 0) $], [$ (0, 0) $],
  [Coordinates of focus], [$ (a, 0) $], [$ (0, a) $],
  [Axis-directrix intersection], [$ (-a, 0) $], [$ (0, -a) $],
  [Endpoints of latus rectum], [$ (a, plus.minus 2a) $], [$ (plus.minus 2a, a) $],
  [Focal parameter (Focus to directrix)], [$ abs(2a) $], [$ abs(2a) $],
  [Focal distance of point $(x_1, y_1)$], [$ x_1 + a $], [$ y_1 + a $],
  [Length of latus rectum], [$ abs(4a) $], [$ abs(4a) $],
  [Equation of directrix], [$ x = -a $], [$ y = -a $],
  [Equation of axis], [$ y = 0 $], [$ x = 0 $],
  [Equation of latus rectum], [$ x = a $], [$ y = a $],
  [Equation of tangent at vertex], [$ x = 0 $], [$ y = 0 $],
  [Equation of tangent at $(x_1, y_1)$], [$ y y_1 = 2a(x + x_1) $], [$ x x_1 = 2a(y + y_1) $],
  [Equation of normal line at $(x_1, y_1)$],
  [$ y - y_1 = -frac(y_1, 2a) (x - x_1) $ \ $ y = -t x + 2 a t + a t^3 $],
  [$ x - x_1 = -frac(x_1, 2a) (y - y_1) $ \ $ x = -t y + 2 a t + a t^3 $],

  [Condition for tangency $(y = m x + c)$], [$ c = a/m $], [$ c = -a m^2 $],
  [Parametric equation], [$ x = a t^2, y = 2a t $], [$ x = 2a t, y = a t^2 $],
  [Eccentricity], [$ e = 1 $], [$ e = 1 $],
  [Director Circle (Perpendicular Tangents Locus)], [$ x = -a " (Directrix)" $], [$ y = -a " (Directrix)" $],
)

\
== Ellipse
\
#figure(
  image("../assets/math_geometry_ellipse.png"),
  caption: $x^2/a^2 + y^2/b^2 = 1, quad a > b$,
) <ellipse>
\

#table(
  columns: (auto, auto, auto),
  [*Description*], [$ x^2/a^2 + y^2/b^2 = 1, quad a > b $], [$ x^2/a^2 + y^2/b^2 = 1, quad b > a $],
  [Coordinates of center], [$ (0, 0) $], [$ (0, 0) $],
  [Coordinates of foci], [$ (plus.minus a e, 0) $], [$ (0, plus.minus b e) $],
  [Vertices / Major axis endpoints], [$ (plus.minus a, 0) $], [$ (0, plus.minus b) $],
  [Minor axis endpoints], [$ (0, plus.minus b) $], [$ (plus.minus a, 0) $],
  [Length of major axis], [$ 2a $], [$ 2b $],
  [Length of minor axis], [$ 2b $], [$ 2a $],
  [Length of latus rectum], [$ 2 b^2/a $], [$ 2 a^2/b $],
  [Distance between foci], [$ 2a e $], [$ 2b e $],
  [Focal radii of point $(x_1, y_1)$], [$ a plus.minus e x_1 $], [$ b plus.minus e y_1 $],
  [Distance between directrices], [$ 2 a/e $], [$ 2 b/e $],
  [Equation of major axis], [$ y = 0 $], [$ x = 0 $],
  [Equation of minor axis], [$ x = 0 $], [$ y = 0 $],
  [Equation of directrices], [$ x = plus.minus a/e $], [$ y = plus.minus b/e $],
  [Equation of latus rectum], [$ x = plus.minus a e $], [$ y = plus.minus b e $],
  [Equation of tangent at $(x_1, y_1)$],
  [$ frac(x x_1, a^2) + frac(y y_1, b^2) = 1 $],
  [$ frac(x x_1, a^2) + frac(y y_1, b^2) = 1 $],

  [Equation of normal line at $(x_1, y_1)$],
  [$ frac(a^2 x, x_1) - frac(b^2 y, y_1) = a^2 - b^2 \ a x sec theta - b y csc theta = a^2 - b^2 $],
  [$ frac(b^2 y, y_1) - frac(a^2 x, x_1) = b^2 - a^2 \ b y sec theta - a x csc theta = b^2 - a^2 $],

  [Condition for tangency $(y = m x + c)$],
  [$ c = plus.minus sqrt(a^2 m^2 + b^2) $],
  [$ c = plus.minus sqrt(b^2 m^2 + a^2) $],

  [Parametric equation], [$ x = a cos theta, y = b sin theta $], [$ x = a cos theta, y = b sin theta $],
  [Eccentricity], [$ e = sqrt(1 - b^2/a^2) $], [$ e = sqrt(1 - a^2/b^2) $],
  [Area], [$ pi a b $], [$ pi a b $],
  [Director Circle], [$ x^2 + y^2 = a^2 + b^2 $], [$ x^2 + y^2 = a^2 + b^2 $],
)

\
== Hyperbola
\
#figure(
  image("../assets/math_geometry_hyperbola.png"),
  caption: $x^2/a^2 - y^2/b^2 = 1$,
) <hyperbola>
\

#table(
  columns: (auto, auto, auto),
  [*Description*], [$ x^2/a^2 - y^2/b^2 = 1 $], [$ y^2/b^2 - x^2/a^2 = 1 $],
  [Coordinates of center], [$ (0, 0) $], [$ (0, 0) $],
  [Coordinates of foci], [$ (plus.minus a e, 0) $], [$ (0, plus.minus b e) $],
  [Vertices / Transverse axis endpoints], [$ (plus.minus a, 0) $], [$ (0, plus.minus b) $],
  [Conjugate axis endpoints], [$ (0, plus.minus b) $], [$ (plus.minus a, 0) $],
  [Length of transverse axis], [$ 2a $], [$ 2b $],
  [Length of conjugate axis], [$ 2b $], [$ 2a $],
  [Length of latus rectum], [$ 2 b^2/a $], [$ 2 a^2/b $],
  [Distance between foci], [$ 2a e $], [$ 2b e $],
  [Focal radii of point $(x_1, y_1)$], [$ abs(e x_1 plus.minus a) $], [$ abs(e y_1 plus.minus b) $],
  [Distance between directrices], [$ 2 a/e $], [$ 2 b/e $],
  [Equation of transverse axis], [$ y = 0 $], [$ x = 0 $],
  [Equation of conjugate axis], [$ x = 0 $], [$ y = 0 $],
  [Equation of directrices], [$ x = plus.minus a/e $], [$ y = plus.minus b/e $],
  [Equation of latus rectum], [$ x = plus.minus a e $], [$ y = plus.minus b e $],
  [Equation of asymptotes], [$ y = plus.minus b/a x $], [$ x = plus.minus a/b y $],
  [Equation of tangent at $(x_1, y_1)$],
  [$ frac(x x_1, a^2) - frac(y y_1, b^2) = 1 $],
  [$ frac(y y_1, b^2) - frac(x x_1, a^2) = 1 $],

  [Equation of normal line at $(x_1, y_1)$],
  [$ frac(a^2 x, x_1) + frac(b^2 y, y_1) = a^2 + b^2 \ a x cos theta + b y cot theta = a^2 + b^2 $],
  [$ frac(b^2 y, y_1) + frac(a^2 x, x_1) = a^2 + b^2 \ b y cos theta + a x cot theta = a^2 + b^2 $],

  [Condition for tangency $(y = m x + c)$],
  [$ c = plus.minus sqrt(a^2 m^2 - b^2) $],
  [$ c = plus.minus sqrt(b^2 - a^2 m^2) $],

  [Parametric equation], [$ x = a sec theta, y = b tan theta $], [$ x = a tan theta, y = b sec theta $],
  [Eccentricity], [$ e = sqrt(1 + b^2/a^2) $], [$ e = sqrt(1 + a^2/b^2) $],
  [Director Circle], [$ x^2 + y^2 = a^2 - b^2 quad (a > b) $], [$ x^2 + y^2 = b^2 - a^2 quad (b > a) $],
)
\

- *Rectangular Hyperbola*
\
#table(
  columns: (auto, auto, auto),
  [*Characteristic*], [*Standard Form* $ x^2 - y^2 = a^2 $], [*Rotated Form* $ x y = c^2 $],
  [Relationship],
  [Derived from standard form with $a = b$],
  [Derived by rotating $x^2 - y^2 = a^2$ by $45^circle$ where $c^2 = a^2/2$],

  [Axis orientation], [Transverse axis along $x$-axis], [Transverse axis along line $y = x$],
  [Coordinates of vertices], [$ (plus.minus a, 0) $], [$ (plus.minus c, plus.minus c) $],
  [Coordinates of foci], [$ (plus.minus a sqrt(2), 0) $], [$ (plus.minus c sqrt(2), plus.minus c sqrt(2)) $],
  [Length of latus rectum], [$ 2a $], [$ 2 sqrt(2) c $],
  [Equation of asymptotes], [$ y = plus.minus x $], [$ x = 0, y = 0 $],
  [Parametric form], [$ x = a sec theta, y = a tan theta $], [$ x = c t, y = c/t $],
  [Eccentricity], [$ e = sqrt(2) $], [$ e = sqrt(2) $],
)
