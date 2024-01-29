
f_DB_cols <- function(table_name, pattern = '') {

  dbListFields(con, table_name) %>%
    sort() %>%
    as.data.frame() %>%
    filter(str_detect(., pattern))

}

