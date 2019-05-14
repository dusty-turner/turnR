#' Says Hello To The User
#'
#' This packages provides this function to say hello to the user.
#'
#' @param name A character string
#' @return A character string that says Hello \code{name}
#' @export
#'
#' @examples
#' hello(name = "Dusty")
hello <- function(name) {
  print(paste0("Hello ", name))
}
