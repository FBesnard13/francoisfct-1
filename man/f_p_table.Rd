\name{f_p_hist}
\alias{f_p_hist}
\title{Pring an histogram from a column}
\usage{
f_p_hist(df, 'column')
}
\arguments{
\item{df}{A dataframe.}
\item{column}{A column of the dataframe.}
}
\value{
}
\description{
Return an histogram in the 'Plots' window.
}
\examples{
f_p_hist(mpg, 'hwy')
mpg \%>\% f_p_hist('hwy')
}
