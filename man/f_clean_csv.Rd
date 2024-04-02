\name{f_clean_csv}
\alias{f_clean_csv}
\title{Clean a df before writing as a CSV}
\usage{
f_clean_csv(df)
}
\arguments{
\item{df}{A dataframe.}
}
\value{
}
\description{
Return a df with characters replaced:\cr
- NAs turns into ''\cr
- ',' turns into '-'\cr
- " ' " turns into 'in'\cr
- line breaks turns into ''
}
\examples{
cleaned_mpg <- f_clean_csv(mpg)
}
