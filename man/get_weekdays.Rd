% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datetime.R
\name{get_weekdays}
\alias{get_weekdays}
\alias{get_months}
\title{Get the days of the week or months of the year}
\usage{
get_weekdays(abbreviate = FALSE, locale = NULL, from = Sys.Date())

get_months(abbreviate = FALSE, locale = NULL, from = Sys.Date())
}
\arguments{
\item{abbreviate}{A logical value indicating whether or not to return
abbreviated names (if they are available).}

\item{locale}{A string denoting the name of the locale to retrieve names in,
or \code{NULL} to use the current locale.}

\item{from}{Date to use for the first day/month.}
}
\value{
A string containing a regular expression of the names of the days of
the week, separated by pipes.  The first day of the week will be the current
day.
}
\description{
Get the names of the days of the week in a given locale.
}
\note{
See \code{\link[base]{Sys.setlocale}} and
\url{http://stackoverflow.com/q/20960821/134830} and
\url{http://stackoverflow.com/q/26603564/134830} for how to specify
the locale.
}
\examples{
get_weekdays()
get_weekdays(TRUE)
get_months()
get_months(TRUE)
\dontrun{
if(.Platform$OS.type == "windows")
{
  get_weekdays(locale = "French_France")
  get_weekdays(TRUE, locale = "French_France")
  get_weekdays(locale = "Arabic_Qatar")
  get_weekdays(TRUE, locale = "Arabic_Qatar")
} else
{
  get_weekdays(locale = "fr_FR.utf8")
  get_weekdays(TRUE, locale = "fr_FR.utf8")
  get_weekdays(locale = "ar_QA.utf8")
  get_weekdays(TRUE, locale = "ar_QA.utf8")
}
}
}
