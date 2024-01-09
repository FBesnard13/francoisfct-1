\name{f_DB_tables}
\alias{f_DB_tables}
\title{Tables names in the DataBase}
\usage{
f_DB_tables('txt')
}
\arguments{
\item{txt}{Optional: A string.}
}
\value{
}
\description{
Returns the tables names that are in the DataBase.\cr
If we specify a txt, it will return only the column names that contain the txt.
}
\examples{
f_DB_tables()
f_DB_tables('txt')
}
