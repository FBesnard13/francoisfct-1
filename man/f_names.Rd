\name{f_names}
\alias{f_names}
\title{Tables names in the Dataframe}
\usage{
f_names(df, 'txt')
}
\arguments{
\item{df}{A dataframe.}
\item{txt}{Optional: A string.}
}
\value{
}
\description{
Returns the tables names that are in the Dataframe.\cr
If we specify a txt, it will return only the column names that contain the txt.
}
\examples{
f_names(mpg, 'a')
mpg \%>\% f_names('a')

f_names(mpg)
mpg \%>\% f_names()
}
