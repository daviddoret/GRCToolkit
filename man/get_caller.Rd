% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_caller.R
\name{get_caller}
\alias{get_caller}
\title{get_caller}
\usage{
get_caller(level = 0, verbosity = NULL, ...)
}
\arguments{
\item{level}{(Scalar integer) The level to climb up the stack.}
}
\value{
(character) The calling function.
}
\description{
A friendly R debugging / troubleshooting function that returns the calling function from the stack.
}
\examples{
get_caller()
f1 <- function(level = NULL) { return(get_caller(level = level)) }
f1()
f1(level = 0)
f1(level = 1)
f1(level = 2)
f2 <- function(level = NULL) { return(get_caller(level = level)) }
f2()
f2(level = 0)
f2(level = 1)
f2(level = 2)

}

