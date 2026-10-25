#import "@preview/ratchet:0.0.4": *




#let mytable(columns: int, data: array, name: str) = [
  #figure(
    table(
      // columns: 3,
      columns: (1fr,) * columns,
      ..array(data)
      // table.header([Hello],[world],[!])
    ),
    caption: name,
    supplement: [Таблица]
  )

]
#let introduction() = [
  #figure(
    [],                    // body (обязательный позиционный, пустой)
    kind: "chapter",
    supplement: none,
    caption: [ВВЕДЕНИЕ],   // именно это попадёт в оглавление
    numbering: none,
  )
]