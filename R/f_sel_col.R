f_sel_col <- function(df) {

  x <- cat("c(", "\n", paste0("'", names(df), "',", "\n"),")")

  return(x)
}


