#' Crop yield
#'
#' This function determines the annual crop yield based on mean precipitation 
#' and fertilizer 


cropyield = function(f, TP) {
  yield = 1.8*f^2-0.5*f+0.1*TP
  return(yield)
}