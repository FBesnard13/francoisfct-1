\name{f_gpt}
\alias{f_gpt}
\title{OpenAI GPT API Interface Function}
\usage{
f_gpt(question, instructions = '')
}
\arguments{
\item{question}{A string containing the question or prompt to send to GPT.}
\item{instructions}{Optional: A string containing system instructions to guide GPT's behavior. Default is empty string.}
}
\value{
Returns a string containing GPT's response to the question.
}
\description{
Sends a query to OpenAI's GPT API and returns the response.\cr
Requires an OpenAI API key stored in the environment variable "OPEN_AI_API_KEY".\cr
Uses the GPT-4 model to generate responses based on the provided question and optional instructions.
}
\examples{
# Basic usage with just a question
f_gpt("What is R programming?")

# Usage with custom instructions
f_gpt("What is R programming?", "You are a helpful programming assistant.")
}
