#import "@preview/ratchet:0.0.4": *
#import "/my_lib/tools.typ" : mytable

#pagebreak()

#heading(numbering: none)[Введение]
#show: ratchet.with(
    fig-depth: 2,
    fig-outline: "1.1",
    init: "reset",
)// нужен чтоб не засчитал Введение за заголовком



= Заголовок


#mytable(
    columns: 2,
    name: "Hell",
    data: ("hellow","Hellow"),

)

$ R_2_2 = (2 times 2)/(2 dots 2) $
$ R_2_2 = (2 times 2)/(2 dots 2) $
$ R_2_2 = (2 times 2)/(2 dots 2) $
$ R_2_2 = (2 times 2)/(2 dots 2) $

= Hello wrold

$ R_2_2 = (2 times 2)/(2 dots 2) $
$ R_2_2 = (2 times 2)/(2 dots 2) $
$ R_2_2 = (2 times 2)/(2 dots 2) $

