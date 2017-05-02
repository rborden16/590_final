#' Build a rose diagram from a data frame column.
#' 
#' @param df A data frame.
#' @param f A column in the data frame.
#' @return A rose diagram with lines showing preferred orientation and stress
#' orientation.
#' @examples
#' OrientRose(10, 10, 10, 300, 140, 50, 260)
#' @export 
OrientRose <- function(df, f) {
  d <- ggplot(df, aes(f)) + geom_histogram(bins = 36) + coord_polar() + 
    geom_vline(xintercept = sx, color = "red", size = 1) + 
    geom_vline(xintercept = ox, color = "yellow", size = 1)
  print(d)
}