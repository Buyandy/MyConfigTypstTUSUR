

#let front_page(
  work_name: str,
  theme_name: str,
  students: array,
  group: str,
  size_block_authors: 9fr,
  teacher_level: str,
  teacher_name: str,
  current_year: int,
  city: str,
  
) = [
  #set par(justify: false)
  #set page(numbering: none)
  #set align(center)
  #set rect(stroke: none)
  Министерство науки и высшего образования Российской Федерации Федеральное государственное автономное образовательное учреждение высшего образования
  \
  \
  ТОМСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ СИСТЕМ УПРАВЛЕНИЯ И РАДИОЭЛЕКТРОНИКИ (ТУСУР)
  \
  \
  Кафедра КУДР
  \
  \
  #work_name
  \
  #upper(theme_name)
  \
  \
  #grid(
    align: left,
    columns: (6fr, 6fr, size_block_authors),
    rect(),
    rect(),
    rect([
      #set par(leading: 1em)
      #let long_line = "__________"
      #if type(students) == array [
      #if students.len() > 1 [Студенты] else [Студент]
      ] else [Студент]
      гр. #group\
      #if type(students) == array [
        #for i in students [
          #long_line #i\
        ]
      ] else [#long_line #students\ ]
      Принял:\
      #teacher_level\
      #long_line #teacher_name\
      #"«__»" #long_line #current_year г.
    ]),
    
  )
  #place(
        bottom + center,
        [#city #current_year]
      )
]