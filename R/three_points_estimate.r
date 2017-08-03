# 3 POINTS ESTIMATE

three_points_estimate <- setClass(
  # Class Name
  Class="three_points_estimate",
  slots=c(
    # Attributes
    range_min = "numeric",
    typical = "numeric",
    range_max = "numeric",
    range_size = "numeric"
  ),
  # Default Values
  prototype=list(
    range_size = 90
  ),

  # Make a function that can test to see if the data is consistent.
  # This is not called if you have an initialize function defined!
  validity=function(object)
  {
    if((object@range_size <= 0) || (object@range_size >= 100)) {
      return("range_size must be expressed in % (e.g.: 90). It must be strictly greater than 0 and lower than 100.")
    }
    return(TRUE)
  }
)

setMethod("show",
          "three_points_estimate",
          function(object) {
            cat(object@range_min, "\n")
            cat(object@typical, "\n")
            cat(object@range_max, "\n")
            cat(object@range_size, "\n")
          }
)

#setMethod("show","Trajectories",
#             function(object){
#               cat("*** Class Trajectories, method Show *** \n")
#               cat("* Times ="); print(object@times)
#               nrowShow <- min(10,nrow(object@traj))
#               ncolShow <- min(10,ncol(object@traj))
#               cat("* Traj (limited to a matrix 10x10) = \n")
#               print(formatC(object@traj[1:nrowShow,1:ncolShow]),quote=FALSE)
#               cat("******* End Show (trajectories) ******* \n")
#               }
#             )

# REWORK THIS,
# CHECK: https://www.stat.auckland.ac.nz/S-Workshop/Gentleman/S4Objects.pdf
# SECTION "Replacement Method"
#setGeneric("a<-", function(x, value) standardGeneric("a<-"))
#setReplaceMethod("a", "foo", function(x, value) {
#   x@a <- value
#   x
#    })

setGeneric("set_range_size",
           def=function(object, range_size, ...)
           {
             standardGeneric("set_range_size")
           }
)

#setMethod(f="set_range_size",
#          signature=signature(object = "object", range_size = "range_size"),
#          definition=function(object, range_size, ...)
#          {
#            object@range_size <- range_size
#            return(object)
#          }
#)
setMethod("set_range_size",
          signature("three_points_estimate", range_size = "numeric"),
          function (object, range_size, ...)
          {
            object@range_size <<- range_size
            #slot(object, "range_size") <<- range_size
            return(object)
          }
)

setGeneric("get_range_size",
           def=function(object)
           {
             standardGeneric("get_range_size")
           }
)

setMethod(f="get_range_size",
          signature="three_points_estimate",
          definition=function(object)
          {
            return(object@range_size)
          }
)

