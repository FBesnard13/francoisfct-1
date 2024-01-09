f_clean_csv <- function(df) {

  df <- df %>%  mutate_all(as.character)
  df[is.na(df)] <- ""

  df <- as.data.frame(lapply(df, function(x) gsub(',', '-', as.character(x))))
  df <- as.data.frame(lapply(df, function(x) gsub('"', 'in', as.character(x))))
  df <- as.data.frame(lapply(df, function(x) gsub('[\r\n]', '', as.character(x))))

  return(df)
}

