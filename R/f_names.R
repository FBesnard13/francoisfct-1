
f_names <- function(df, txt = '') {

  if (txt == ''){

    names(df) |>
      data.frame() |>
      rename('ColNames' = 1) |>
      print()

  } else {

    names(df) |>
      data.frame() |>
      rename('ColNames' = 1) |>
      filter(str_detect(ColNames, txt)) |>
      print()

  }
}
