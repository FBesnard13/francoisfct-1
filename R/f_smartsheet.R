f_smartsheet <- function(sheet_id) {

  api_key <- Sys.getenv("SMARTSHEET_API_KEY")
  if (identical(api_key, "")) stop("Env var SMARTSHEET_API_KEY is not set.")

  url <- paste0("https://api.smartsheet.com/2.0/sheets/", sheet_id)

  res <- httr::GET(url, httr::add_headers(Authorization = paste("Bearer", api_key)))
  httr::stop_for_status(res)

  sheet <- jsonlite::fromJSON(httr::content(res, "text", encoding = "UTF-8"), simplifyVector = FALSE)

  col_map <- setNames(
    vapply(sheet$columns, `[[`, "", "title"),
    vapply(sheet$columns, function(x) as.character(x$id), "")
  )

  rows_list <- lapply(sheet$rows, function(r) {
    out <- setNames(as.list(rep(NA, length(col_map))), col_map)

    for (cell in r$cells) {
      cid <- as.character(cell$columnId)
      nm <- col_map[[cid]]
      if (!is.null(nm)) {
        out[[nm]] <- if (!is.null(cell$displayValue)) cell$displayValue else cell$value
      }
    }

    as.data.frame(out, stringsAsFactors = FALSE, check.names = FALSE)
  })

  dplyr::bind_rows(rows_list)
}
