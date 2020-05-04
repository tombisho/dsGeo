#'
#' @title Summary for geo objects
#' @description This function wraps summary
#' @details See the gBuffer() function from rgeos package for more details
#' @param input sp object as defined in package sp
#' @return SpatialPolygons (or a SpatialPolygonsDataFrame if by_id=TRUE and
#' input has a data.frame); if negative width(s) lead the object to disappear,
#' NULL is returned for by_id FALSE, and component Polygons objects are dropped if
#' empty for byid TRUE; the SpatialPolygonsDataFrame is subsetted by row.names or id
#' if given to retain non-empty geometry rows
#' @author Bishop, T.
#' @export
#'

geoSummaryDS <- function(input){

  #require(rgeos)

  if(!is.null(input)){
    sdf <- get(input, envir = parent.frame())
  }else{
    sdf <- NULL
  }

  temp <- sp::summary(sdf)

  return(temp)

}
