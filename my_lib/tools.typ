#import "@preview/ratchet:0.0.4": *




#let my_table(columns: int, data: array, name: str) = [
  #set par(leading: 0.65em)
  #figure(
    table(
      // columns: 3,
      columns: (1fr,) * columns,
      ..array(data),
      // table.header([Hello],[world],[!])
      align: center + horizon
    ),
    caption: name,
    supplement: [Таблица]
  )

]
#let my_introduction() = [
  #figure(
    [],                    // body (обязательный позиционный, пустой)
    kind: "chapter",
    supplement: none,
    caption: [ВВЕДЕНИЕ],   // именно это попадёт в оглавление
    numbering: none,
  )
]

#let my_image(img: image, name: content) = [
  #figure(
    img,
    caption: name,
    supplement: [Рисунок],
  )
]
