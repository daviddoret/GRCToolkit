% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/factor_estimate_normal.R
\docType{class}
\name{factor_estimate_normal}
\alias{factor_estimate_normal}
\title{factor_estimate_normal}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
factor_estimate_normal
}
\value{
An instance of the \code{factor_estimate_normal} \code{\link{R6Class}}.
}
\description{
A class for factor estimates based on the normal distribution ("Gaussian").
\cr It may be inherited by subclasses, e.g. to implement complementary estimation techniques.
}
\section{Fields}{

\describe{
\item{\code{sd}}{(numeric, scalar) The standard deviation parameter of the normal distribution.}

\item{\code{mean}}{(numeric, scalar) The mean parameter of the normal distribution.}

\item{\code{limit_min_value}}{A strict lower bound applied to the factor simulation values. If NULL or NA, no lower bound will be applied.}

\item{\code{limit_max_value}}{A strict upper bound applied to the factor simulation values. If NULL or NA, no upper bound will be applied.}

\item{\code{limit_min_behavior}}{One of the following options determining how values will be maintained within \code{limit_min_value}: \code{"Limit"} (default), \code{"Replace"}, \code{"Discard"}. \code{"Limit"}: When an out of bound value is drawn, apply \code{min}/\code{max} functions to force it within bounds. \code{"Replace"}: When an out of bound value is drawn, we replace it until it is within bound. \code{"Discard"}: When an out of bound value is drawn, remove it from the sample.}

\item{\code{limit_max_behavior}}{One of the following options determining how values will be maintained within \code{limit_max_value}: \code{"Limit"} (default), \code{"Replace"}, \code{"Discard"}. \code{"Limit"}: When an out of bound value is drawn, apply \code{min}/\code{max} functions to force it within bounds. \code{"Replace"}: When an out of bound value is drawn, we replace it until it is within bound. \code{"Discard"}: When an out of bound value is drawn, remove it from the sample.}
}}
\section{Inherits}{

\describe{
  \item{\code{\link{factor_estimate}}}{}
}
}

\section{Methods}{

\describe{
  \item{get_random(n = 1, output_class = "vector")}{ Returns a random sample of size \code{n}. Returns a vector by default. If \code{output_class} = "data.frame", returns a data.frame with a column "factor_value". This second parameterization may be enriched by R6 subclasses to provide additional columns with complementary information. }
}
}
\examples{
f1 <- factor_estimate_normal$new(sd = 5, mean = 100)
}
\keyword{data}

