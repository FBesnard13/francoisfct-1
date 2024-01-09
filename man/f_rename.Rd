\name{f_rename}
\alias{f_rename}
\title{Print a renaming & selecting script}
\usage{
f_rename(df)
}
\arguments{
\item{df}{A dataframe.}
}
\value{
}
\description{
Print a script that we can copy into the console to renames the columns & select the columns we want to keep.
If we don't want to keep a column, don't change the number in the renaming, and it will be removed from the df.
}
\examples{
f_rename(mpg)
}
