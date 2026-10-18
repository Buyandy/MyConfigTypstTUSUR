
#let tusur_GOST(body) = {
  set par(justify: true)
  set text(font: "Times New Roman", size: 14pt)
  set par(leading: 1.5em)
  set page(margin: (
    left: 30mm,
    right: 15mm,
    top: 20mm,
    bottom: 20mm,
  ))
  set par(first-line-indent: 1.25cm)

  set heading(
    numbering: "1.1.1",
  )
  set page(numbering: "1")


  show heading: set align(center)
  show heading: set par(leading: 1em)
  show heading: set text(
    size: 14pt,
    weight: "regular",
  )
  show heading: it => block[
    #upper(it)
  ]
  

  body
}
