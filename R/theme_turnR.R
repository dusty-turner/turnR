#' Title
#'
#' @param base_size
#' @param base_family
#' @param base_line_size
#' @param base_rect_size
#' @param theme
#'
#' @return ggplot theme
#' @export
#'
#' @examples
#' theme_turnR()
theme_turnR  <- function () {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package \"ggplot2\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  theme(
    panel.background  = element_blank(),
    plot.background = element_rect(fill="gray96", colour="gray96"),
    panel.border = element_rect(linetype = "solid", fill = NA),
    legend.position = "none",
    plot.title = element_text(hjust = 0.5)
  )
}
