fdistinct <- function(data, col_name) {

  data[!duplicated(data[[col_name]]) | !duplicated(data[[col_name]], fromLast = TRUE), ]

}
