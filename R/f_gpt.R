f_gpt <- function(question, instructions = '') {
  # Set your OpenAI API key
  api_key <- Sys.getenv("OPEN_AI_API_KEY")

  if (api_key == "") {
    stop("API key not found in environment variables")
  }

  # Define the API endpoint URL
  url <- "https://api.openai.com/v1/chat/completions"

  # Define the request headers
  headers <- add_headers(
    "Content-Type" = "application/json",
    "Authorization" = paste("Bearer", api_key)
  )

  # Define the request body
  body_data <- list(
    model = "gpt-4o",
    messages = list(
      list(role = "system", content = instructions),
      list(role = "user", content = question)
    )
  )

  # Send the POST request with error handling
  tryCatch({
    response <- POST(
      url,
      headers,
      body = toJSON(body_data, auto_unbox = TRUE),
      encode = "raw"
    )

    if (status_code(response) == 200) {
      response_data <- fromJSON(rawToChar(response$content))
      return(response_data$choices[[1]]$message$content)
    } else {
      stop(sprintf("API request failed with status code %d: %s",
                   status_code(response),
                   content(response, "text")))
    }
  }, error = function(e) {
    stop(sprintf("Error in API request: %s", e$message))
  })
}
