\name{fclean_csv}
\alias{fclean_csv}
\title{Clean a file to save it as CSV}
\usage{
fclean_csv(df)
}
\arguments{
\item{df}{A dataframe.}
}
\value{

}
\description{
Clean the datafeame to clean as CSV:
   - change all columns types to characters
   - change all NA values to ""
   - change all " values to -
   - change all , values to in
   - change all [\r\n] values to "" (remove the break lines)
}
\examples{
fclean_csv(df)
}
