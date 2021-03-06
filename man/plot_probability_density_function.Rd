% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_probability_density_function.R
\name{plot_probability_density_function}
\alias{plot_probability_density_function}
\title{plot_probability_density_function}
\usage{
plot_probability_density_function(fun, x_start, x_end, title = NULL,
  subtitle = NULL, caption = NULL, x_scale_type = NULL,
  y_scale_type = NULL, line_color = NULL, fill_color = NULL,
  fill_alpha = NULL, plot_addition = NULL, ...)
}
\arguments{
\item{fun}{a parameterized probability density function receiving a single x parameter}

\item{x_start}{the left most position that will be displayed on the x axis}

\item{x_end}{the right most position that will be displayed on the x axis}

\item{plot_addition}{Complementary plot objets to be added to the new plot object for enrichment purposes.
\cr This parameter was originally introduced because ggMarginal function from ggExtra made it easy to enrich the plot with a boxplot on top of it, but the resulting plot could no longer be further enriched with additions. To overcome this limitation, I simply open the plot to arbitrary additions via this new parameter.}
}
\value{
a good looking graph
}
\description{
Produces a good looking graph of a probability density function.
}
\examples{
fun <- function(x, ...) { return(dlnorm(x = x, meanlog = 100, sdlog = 20, log = FALSE))  }
graph <- plot_probability_density_function(fun = fun, x_start = 10, x_end = 150)
graph

}

