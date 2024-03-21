f_sel_col <- function(df) {
  column_names <- paste0(names(df), collapse = ",\n  ")
  command_text <- paste0("select(", column_names, ")")
  cat(command_text)
}
