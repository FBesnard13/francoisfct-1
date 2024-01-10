f_p_hist <- function(df, column) {

  column <- enquo(column)  # Capture the expression
  na_count <- sum(is.na(df %>% pull(!!column)))
  unique_count <- length(unique(df %>% pull(!!column)))

  # Creating the histogram with a density overlay
  p <- ggplot(df, aes(x = !!column)) +
    geom_histogram(fill = "blue", color = "white", bins = 30) +  # Added bins argument for better histogram resolution
    theme_bw() +
    labs(title = paste("Distribution of", quo_name(column), "in", deparse(substitute(df))),
         subtitle = paste("NAs:", na_count, "| Unique Values:", unique_count))

  return(p)

}
