#' Randomization Test Visualization
#'
#' This function returns a `ggplot` that shows the propotion of randomized
#' x and y vectors (mean(x)-mean(y)) which are greater than the observed
#' mean(x)-mean(y) vectors.
#'
#' @param x double
#' @param y double
#' @param fun factor
#' @param reps double
#'
#' @return  A ggplot object
#' @export
#'
#' @examples
#' #' set.seed(256)
#' randtest(rnorm(100),rnorm(100,1))
randtestviz <- function(x,y,fun=mean,reps=10000) {
  if (!requireNamespace("tidyverse", quietly = TRUE)) {
    stop("Package \"tidyverse\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
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

  plot1 = as.data.frame(results)
  # plot2 = dplyr::rename(plot1, centrality=".")
  plot =
    ggplot2::ggplot(plot1,ggplot2::aes(x=results)) +
    ggplot2::geom_histogram(ggplot2::aes(y=stat(density))) +
    ggplot2::geom_density(fill = "blue", alpha = .5) +
    ggplot2::geom_vline(ggplot2::aes(xintercept = fun(x)-fun(y)), colour = "Red", size = 2) +
    ggplot2::labs(title="Percent of Randomized mean(x)-mean(y) vectors",
                  subtitle = "Greater than the observed mean(x)-mean(y)",
                  x = "Randomized mean(x) - mean(y)",
                  y = "")
  return(plot)
}
