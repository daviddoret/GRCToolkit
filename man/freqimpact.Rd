% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/freqimpact.R
\name{freqimpact}
\alias{freqimpact}
\title{freqimpact}
\usage{
freqimpact(n, frequency_function, impact_function, output_class = NULL, ...)
}
\arguments{
\item{n}{The desired size of the frequency vector.}

\item{frequency_function}{A frequency function supporting parameter \code{n} that returns a vector of integer frequencies of size \code{n}.}

\item{impact_function}{An impact function supporting parameter \code{n} that returns a vector of impacts of size \code{n}.}

\item{output_class}{Default: "vector". If \code{output_class} = "data.frame", returns a detailed data.frame with columns \code{frequency}, \code{impact_list} and \code{factor_value}.}
}
\value{
a vector or data.frame
}
\description{
\code{freqimpact} is a nickname / contraction for the famous equation \code{Frequency x Impact = Risk}, with:
\itemize{
\item{\code{Frequency} is the probability function of a discrete variable corresponding to the number of events taking place.}
\item{\code{Impact} is the probability function of a continuous variable corresponding to the magnitude or cost of events taking place.}
}
}
\examples{
freqimpact(
  n = 8,
  frequency_function = function(n) {return(rbinom(n = n, size = 4, prob = .5))},
  impact_function = function(n) { return(rnorm(n = n, mean = 100, sd = 5))},
  output_class = "data.frame")

}

