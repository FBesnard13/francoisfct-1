f_gpt <- function(question, instructions = '') {
  api_key <- Sys.getenv("OPEN_AI_API_KEY")

  if (api_key == "") {
    stop("API key not found in environment variables")
  }

  url <- "https://api.openai.com/v1/chat/completions"

  headers <- httr::add_headers(
    "Content-Type" = "application/json",
    "Authorization" = paste("Bearer", api_key)
  )

  body_data <- list(
    model = "gpt-4o",
    messages = list(
      list(role = "system", content = instructions),
      list(role = "user", content = question)
    )
  )

  tryCatch({
    response <- httr::POST(
      url,
      headers,
      body = jsonlite::toJSON(body_data, auto_unbox = TRUE),
      encode = "raw"
    )

    httr::stop_for_status(response)

    response_text <- httr::content(response, "text", encoding = "UTF-8")
    response_data <- jsonlite::fromJSON(response_text, simplifyVector = FALSE)

    # Extract the answer message
    if (!is.null(response_data$choices) &&
        length(response_data$choices) > 0 &&
        !is.null(response_data$choices[[1]]$message$content)) {
      return(response_data$choices[[1]]$message$content)
    } else {
      stop("Unexpected response format from API")
    }

  }, error = function(e) {
    error_message <- conditionMessage(e)
    stop(paste("Error in API request:", error_message))
  })
}
