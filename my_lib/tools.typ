




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