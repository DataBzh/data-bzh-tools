# Couleurs ----
databzh$colours <- c(
  "#973232", "#1E5B5B", "#6D8D2F", "#287928",
  "#E18C8C", "#548787", "#B8D283", "#70B470",
  "#B75353", "#326E6E", "#8CAA4E", "#439243",
  "#711515", "#0D4444", "#4D6914", "#115A11",
  "#490101", "#012C2C", "#2E4401", "#013A01"
)

# Raccourcis couleurs
databzh$colour <- databzh$colour1 <- databzh$colours[1]
databzh$colour2 <- databzh$colours[2]
databzh$colour3 <- databzh$colours[3]
databzh$colour4 <- databzh$colours[4]
databzh$colour5 <- databzh$colours[5]
databzh$colour6 <- databzh$colours[6]
databzh$colour7 <- databzh$colours[7]
databzh$colour8 <- databzh$colours[8]

# Thème ggplot2 ----
library(ggplot2)

#' Génération d'un thème Data-Bzh.
#'
#' @param axis.text
#' @param axis.title
#' @param title
#' @param plot.title
#' @param axis.title.x
#' @param axis.title.y
#' @param legend.text
#' @param plot.margin
#' @param panel.background
#' @param panel.grid.major
#' @param ...
#' @return thème ggplot2.
#' @export
#' @examples
#' databzhTheme()
databzhTheme <- function(axis.text = element_text(size = 10),
                         axis.title = element_text(size = 15),
                         title = element_text(size = 18),
                         plot.title = element_text(margin = margin(0, 0, 20, 0), size = 18, hjust = .5),
                         axis.title.x = element_text(margin = margin(20, 0, 0, 0)),
                         axis.title.y = element_text(margin = margin(0, 20, 0, 0)),
                         legend.text = element_text(size = 12),
                         plot.margin = margin(20, 20, 20, 20), 
                         panel.background = element_rect(fill = "white"),
                         panel.grid.major = element_line(colour = "grey"),
                         ...) {
  th <- theme(
    axis.text = axis.text,
    axis.title = axis.title,
    title = title,
    plot.title = plot.title,
    axis.title.x = axis.title.x,
    axis.title.y = axis.title.y,
    legend.text = legend.text,
    plot.margin = plot.margin, 
    panel.background = panel.background, 
    panel.grid.major = panel.grid.major,
    ...
  )

  return(th)
}
