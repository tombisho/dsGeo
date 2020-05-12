#' @title Wrapper for \code{geometry()} function from sp and rgeos package
#' @description This function is a wrapper for the \code{geometry()} function from the
#' sp and rgeos package.
#' @details See the geometry() function from sp and rgeos package for more details
#' @param input_x spatial dataframe
#' @return If y is only geometry an object of length length(x). If returnList is
#' FALSE, a vector with the (first) index of y for each geometry (point, grid cell
#' centre, polygon or lines) in x. if returnList is TRUE, a list of length
#' length(x), with list element i the vector of all indices of the geometries in
#'  y that correspond to the $i$-th geometry in x.
#' If y has attribute data, attribute data are returned. returnList is FALSE, a
#'  data.frame with number of rows equal to length(x) is returned, if it is TRUE a
#'   list with length(x) elements is returned, with a list element the data.frame
#'    elements of all geometries in y that correspond to that element of x.
#' @author Bishop, T.
#' @export
#'

geometryDS <- function(input_x){

  if(!is.null(input_x)){
    obj_x <- get(input_x, envir = parent.frame())
  }else{
    obj_x <- NULL
  }

  temp <- sp::geometry(obj_x)
  return(temp)

}
