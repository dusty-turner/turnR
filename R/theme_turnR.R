#' turnR theme for ggplot
#'
#' @return ggplot theme
#' @export
#'
theme_turnR  <- function () {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package \"ggplot2\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  ggplot2::theme(
    panel.background  = ggplot2::element_blank(),
    plot.background = ggplot2::element_rect(fill="gray96", colour="gray96"),
    panel.border = ggplot2::element_rect(linetype = "solid", fill = NA),
    legend.position = "none",
    plot.title = ggplot2::element_text(hjust = 0.5),
    plot.subtitle = ggplot2::element_text(hjust = 0.5)
  )
}
