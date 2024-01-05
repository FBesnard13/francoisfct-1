
fDBtables <- function(txt) {

  if (txt == ''){

    dbListTables(con) |>
      sort() |>
      unlist() |>
      data.frame() |>
      print()

  } else {

    dbListTables(con) |>
      sort() |>
      unlist() |>
      data.frame() |>
      rename('col' = 1) |>
      filter(str_detect(col, txt)) |>
      print()

  }

}
