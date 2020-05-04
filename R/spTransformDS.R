#'
#' @title Wrapper for spTransform() function from sp and rgdal packages
#' @description This function is a wrapper for the spTransform() function from the
#' sp and rgdal packages
#' @details See the spTransform() function from sp package for more details
#' @param input object of class "spatial-class"
#' @param projStr a valid proj4 epsg coordinate system identifier as a string e.g. 29902 for
#' Ireland
#' @return object of class "spatial-class" with the coordinate system transformed to that
#' specified in projStr
#' @author Bishop, T.
#' @export
#'
#'
spTransformDS <- function(input,projStr){

  if(!is.null(input)){
    sdf <- get(input, envir = parent.frame())
  }else{
    sdf <- NULL
  }

  proj = sp::CRS(projStr)

  output <- sp::spTransform(sdf, proj)

  return(output)
}
