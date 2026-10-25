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

#let introduction() = {
  heading(numbering: none)[Введение]
  show: ratchet.with(
    fig-depth: 2,
    fig-outline: "1.1",
    init: "reset",
  )// нужен чтоб не засчитал Введение за заголовком
}