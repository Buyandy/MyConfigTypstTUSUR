#import "@preview/ratchet:0.0.4": *


#let tusur_GOST(body) = {
  set par(justify: true)// вырвнивание текста по ширине
  set text(font: "Times New Roman", size: 14pt)// это понятно что
  set par(leading: 1.5em)// расстояние между строк
  set page(margin: (// отступы
    left: 30mm,
    right: 15mm,
    top: 20mm,
    bottom: 20mm,
  ))
  // set par(first-line-indent: 1.25cm) // нету смысла

  set heading(
    numbering: "1.1.1",// Номера для Заголовки
  )
  set page(numbering: "1")// нумерация страниц
  set par(first-line-indent: (amount: 1.25cm, all: true))// Всегда начинать текст с новой главы абзацом
  set rect(// растяжка по горизонтали для grid обьектов
    width: 100%
  )
  show image: set align(center)// Центрирование image


  show heading: set align(center)// Центрирование заголовков
  show heading: set par(leading: 1em)// расстояние между строками ДЛЯ ЗАГОЛОВКА
  show heading: set text(
    size: 14pt,// ???
    weight: "regular",// отключить Жирный шрифт
  )
  show heading: it => block[// Сделать заголовок БОЛЬШИМИ БУКВАМИ
    #upper(it) \
  ]
  show heading.where(level: 1, outlined: true): it => pagebreak(weak: true) + it// Перенос на новый лист при обьявлении нового заголовка

  // Для таблицы
  show figure.where(kind: table): set figure.caption(position: top)// размещение названия таблцы наверх
  show figure.where(kind: table): set align(left)// размещение название таблицы налево

  show: ratchet.with(
  fig-depth: 2,
  fig-outline: "1.1",
  )// нумерация для названии таблицы
  // show math.frac: math.display// чтобы все деления отображались крупно, даже при размешении между буквами

  body
}