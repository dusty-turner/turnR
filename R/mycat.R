#' Cat Function
#'
#' @param CatName A Cat Name
#' @return ASCII Cat with its name.  An incorrect data type will return an angry cat.
#' @export
#'
#' @examples
#' mycat()
mycat = function(CatName = "Beat Navy") {
  if (is.character(CatName)==TRUE) {
    cat(paste("Your Cat's Name is", CatName, "\n \  /\\_/\\\n \ ( o.o )\n   > ^ <\n  (     )\n   ^   ^ \n   _____"))
  } else {
    cat(paste("That's not a real name", "\n Here is an angry cat", "\n/\\ _^_ /\\"))
  }
}
