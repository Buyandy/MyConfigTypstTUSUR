#set page(numbering: none)
#pagebreak()

#show outline: it => block(
  upper(it)
)

#outline(
  title: "Содержимое",
  indent: 0.5em,
  target: heading.where(outlined: true).or(figure.where(kind: "chapter")),
)