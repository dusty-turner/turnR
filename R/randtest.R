#' Randomization Test
#'
#' This fuction is a derivation from the randomization test as
#' presented in the Kuiper Applied Statistics Text Book.  The
#' results are in terms of the probability that the null hypothesis
#' is true
#'
#' @param x double
#' @param y double
#' @param fun factor
#' @param reps double
#'
#' @return a list of probabilities
#' @export
#'
#' @example
#' set.seed(256)
#' randtest(rnorm(100),rnorm(100,1))
randtest <- function(x,y,fun=mean,reps=10000) {
  n <- length(x)
  m <- length(y)
  data <- c(x,y)
  results <- numeric(reps)
  for (i in 1:reps) {
    temp <- sample(data)
    results[i] <- fun(temp[1:n])-fun(temp[(n+1):(n+m)])
  }
  greater.p <- sum(results >= (fun(x)-fun(y)))/reps
  less.p <- sum(results <= (fun(x)-fun(y)))/reps
  a <- abs(fun(x)-fun(y))
  two.sided.p <- sum(abs(results)>=a)/reps
  temp <- c(greater.p, less.p, two.sided.p)
  names(temp) <- c("p.x.less.than.y", "p.x.greater.than.y",
                   "two.sided.p.x=y")
  return(list(results,temp,a))
}
