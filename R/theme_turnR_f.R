#' theme_turnR_f
#'
#' @return
#' @export
#'
#' @examples
theme_turnR_f  <- function () {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package \"ggplot2\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  theme(
    panel.background  = element_blank(),
    plot.background = element_rect(fill="gray96", colour="gray96"),
    panel.border = element_rect(linetype = "solid", fill = NA),
    legend.position = "none",
    # strip.text.x = element_text(colour = "black", face = "bold"),
    plot.title = element_text(hjust = 0.5),
    axis.text.x = element_text(angle = 45, hjust = 1)
  )
}
