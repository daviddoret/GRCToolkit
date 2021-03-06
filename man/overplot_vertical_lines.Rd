% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/overplot_vertical_lines.R
\name{overplot_vertical_lines}
\alias{overplot_vertical_lines}
\title{overplot_vertical_lines}
\usage{
overplot_vertical_lines(x_values, x_labels = NULL, color = NULL,
  alpha = NULL, line_type = NULL, plot_addition = NULL,
  verbosity = NULL, ...)
}
\arguments{
\item{x_values}{a vector of estimated quantiles (aka x values)}

\item{x_labels}{meaningful labels to describe the estimated quantiles}

\item{color}{A GGPlot color value.}

\item{alpha}{A GGPlot alpha value.}

\item{line_type}{GGPlot2 line type. Legal values are the strings "blank", "solid", "dashed", "dotted", "dotdash", "longdash", and "twodash". Alternatively, the numbers 0 to 6 can be used (0 for "blank", 1 for "solid", ...). Moreover, one can also use strings that define the linetype with up to 8 hexadecimal digits (each digit specifying the length of interleaved lines and gaps). Reference: http://sape.inf.usi.ch/quick-reference/ggplot2/linetype.}

\item{plot_addition}{Complementary plot objets to be added to the new plot object for enrichment purposes.}

\item{verbosity}{0: no messages. > 0 more and more verbose messages.}
}
\value{
A good looking geom object that may be used to enrich plots.
}
\description{
Enriches a graph with good looking vertical lines.
For instance, this may be used to represend point estimates and limits in a PDF.
}
\examples{
fun <- function(x, ...) { return(dlnorm(x = x, meanlog = 100, sdlog = 20, log = FALSE))  }
graph <- plot_probability_density_function(fun = fun, x_start = 10, x_end = 150)
graph_enriched <- overplot_vertical_lines(graph=graph, x_values = c(50,90), x_labels = c("a","b"))
graph_enriched

}

