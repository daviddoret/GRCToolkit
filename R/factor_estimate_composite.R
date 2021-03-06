require(R6)
require(gld)

#' factor_estimate_composite
#'
#' This class represents a risk model "composite factor estimate".\cr
#' A "composite factor estimate" is a factor estimation method that is based on:\cr
#'  \itemize{
#'   \item a set of \code{dependent_factors} (aka sub-factors)
#'   }
#' The \code{dependent_factors} may in their turn be estimated with arbitrary estimation methods.\cr
#' \code{factor_estimate_composite} is an "abstract" class that shouldn't be used directly.
#' Instead, use the specialized classes that inherits from it.
#'
#' @docType class
#' @export
#' @keywords data
#' @return An instance of the factor_estimate_composite \code{\link{R6Class}}.
#' @examples
#' fe1 <- factor_estimate_composite$new()
#' @section Inherits:
#' \describe{
#'   \item{\code{\link{factor_estimate}}}{}
#' }
factor_estimate_composite <- R6Class(
  "factor_estimate_composite",
  inherit = factor_estimate,
  public = list(
    initialize = function(
      distribution_type = NULL,
      limit_min_value = NULL,
      limit_min_behavior = NULL,
      limit_max_value = NULL,
      limit_max_behavior = NULL,
      verbosity = NULL,
      ...) {

      # Parameters validation
      verbosity <- vp(verbosity, 1, "numeric", 1)

      # Call the constructor of the parent class
      super$initialize(
        distribution_name = "Composite",
        distribution_type = distribution_type,
        limit_min_value = limit_min_value,
        limit_min_behavior = limit_min_behavior,
        limit_max_value = limit_max_value,
        limit_max_behavior = limit_max_behavior,
        verbosity = verbosity - 1,
        ...)

    },

    check_state_consistency = function(output_format = NULL, ...) {
      super$check_state_consistency(output_format = output_format, ...)
    },
    get_print_lines = function(...) {
      return(
          c(super$get_print_lines()))
    }
  ),
  active = list(
  ),
  private = list(
  )
)
