\name{f_p_boxplot}
\alias{f_p_boxplot}
\title{BoxPlot a column}
\usage{
f_p_boxplot(df, 'column')
}
\arguments{
\item{df}{A dataframe.}
\item{column}{A column of the dataframe.}
}
\value{
}
\description{
Return a boxplot in the 'Plots' window.
}
\examples{
f_p_boxplot(mpg, 'hwy')
mpg \%>\% f_p_boxplot('hwy')
}
