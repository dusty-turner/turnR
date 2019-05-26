#' theme_turnR_f
#'
#' @return
#' @export
#'
theme_turnR_f  <- function () {
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
    axis.text.x = ggplot2::element_text(angle = 45, hjust = 1)
  )
}
