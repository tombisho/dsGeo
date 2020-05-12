#' @title Wrapper for \code{lapply()} function from sp and rgeos package
#' @description This function is a wrapper for the \code{lapply()} function
#' @details See the lapply() function
#' @param input a list
#' @param fun a function; see value
#' @return as per lapply
#' @author Bishop, T.
#' @export
#'

lapplyDS <- function(input, fun = NULL){

  if(!is.null(input)){
    obj_x <- get(input, envir = parent.frame())
  }else{
    obj_x <- NULL
  }
  my.fun = as.name(fun)

  temp <- lapply(obj_x, FUN = my.fun)
  return(temp)

}
