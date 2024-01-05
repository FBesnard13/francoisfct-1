\name{ftable}
\alias{ftable}
\title{Nb Occurence Unique Values}
\usage{
ftable(x)
}
\arguments{
\item{x}{A list.}
}
\value{
Table with:  -
  Col1 = all unique values in the \code{x} list  -
  Col2 = Number of occurence for the assoviated value
}
\description{
Calculate the number of occurences of each unique value of a list.
}
\examples{
ftable(df$colA)
ftable(listVariable)
}
