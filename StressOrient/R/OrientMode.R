#' Find the statistical mode of a vector.
#' 
#' @param x A vector.
#' @return The statistical mode of \code{x} as ox and the corresponding stress 
#' orientation as sx.
#' @examples
#' OrientMode(1, 1, 1, 3, 4, 5, 2)
#' @export 
OrientMode <- function(x) {
  ux <- unique(x)
  ox <- ux[which.max(tabulate(match(x, ux)))]
  sx <- (ux + 90)
  print(ox)
  print(sx)
}