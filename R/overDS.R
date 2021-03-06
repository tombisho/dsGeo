#' @title Wrapper for \code{over()} function from sp and rgeos package
#' @description This function is a wrapper for the \code{over()} function from the
#' sp and rgeos package.consistent spatial overlay for points, grids and polygons:
#' at the spatial locations of object x retrieves the indexes or attributes from
#' spatial object y. \code{over()} can be seen as a left outer join in SQL;
#' the match is a spatial intersection.
#' @details See the over() function from sp and rgeos package for more details
#' @param input_x geometry (locations) of the queries
#' @param input_y layer from which the geometries or attributes are queried
#' @param retList logical; see value
#' @param fun optional, a function; see value
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

overDS <- function(input_x, input_y, retList = FALSE, fun = NULL){

  if(!is.null(input_x)){
    obj_x <- get(input_x, envir = parent.frame())
  }else{
    obj_x <- NULL
  }

  if(!is.null(input_y)){
    obj_y <- get(input_y, envir = parent.frame())
  }else{
    obj_y <- NULL
  }


  temp <- sp::over(obj_x, obj_y, returnList=retList, fn=fun)
  return(temp)

}
