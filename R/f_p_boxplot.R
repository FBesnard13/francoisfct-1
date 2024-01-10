f_p_boxplot <- function(df, column) {

  column <- enquo(column)  # Capture the expression
  na_count <- sum(is.na(df %>% pull(!!column)))
  unique_count <- length(unique(df %>% pull(!!column)))

  # Creating the box plot
  p <- ggplot(df, aes(y = !!column)) +
    geom_boxplot(fill = "blue", color = "black", alpha = 0.5, size = 1.5) +
    theme_bw() +
    theme(axis.text.x = element_blank(), axis.ticks.x = element_blank()) +
    labs(title = paste("Box Plot of", quo_name(column), "in", deparse(substitute(df))),
         subtitle = paste("NAs:", na_count, "| Unique Values:", unique_count))

  return(p)

}
