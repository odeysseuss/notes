#import "@preview/lilaq:0.6.0" as lq

#let arcsec = math.op("arcsec")
#let arccsc = math.op("arccsc")
#let arccot = math.op("arccot")

#let arcsinh = math.op("arcsinh")
#let arccosh = math.op("arccosh")
#let arctanh = math.op("arctanh")
#let arccoth = math.op("arccoth")
#let arcsech = math.op("arcsech")
#let arccsch = math.op("arccsch")

#let ddx = $frac(d, d x)$

#let graph(title, func, x) = {
  show math.equation: set align(center)
  show: lq.theme.schoolbook

  lq.diagram(
    title: title,
    width: 5cm,
    height: 3cm,
    ylim: (-5, 5),
    lq.plot(
      x,
      x.map(func),
    ),
  )
}
