#'
#' @title Wrapper for proj4string() function from sp and rgdal packages
#' @description This function is a wrapper for the proj4string() function from the
#' sp and rgdal packages
#' @details See the proj4string() function from sp package for more details
#' @param input object of class "spatial-class"
#' @param projStr a valid proj4 epsg coordinate system identifier as a string e.g. 29902 for
#' Ireland
#' @return object of class "spatial-class" with the proj4string set to the value passed
#' to the function
#' @author Bishop, T.
#' @export
#'

proj4stringDS <- function(input,projStr){


  if(!is.null(input)){
    sdf <- get(input, envir = parent.frame())
  }else{
    sdf <- NULL
  }

  sp::proj4string(sdf) <- sp::CRS(projStr)

  output <- sdf
  return(output)

}
