\name{f_p_table}
\alias{f_p_table}
\title{Unique values with occurences}
\usage{
f_p_table(df, 'column')
}
\arguments{
\item{df}{A dataframe.}
\item{column}{A column of the dataframe.}
}
\value{
}
\description{
Retruns a df with the unique values of a clumns and the number of occurence of each unique values.
}
\examples{
f_p_table(mpg, 'hwy')
mpg \%>\% f_p_table('hwy')
}
