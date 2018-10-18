#' The DrWhy logo, using ASCII art
#'
#' @export
#' @examples
#' DrWhy_logo()

DrWhy_logo <- function() {
  logo <- c(
"                              _____ ",
"     ____         _ _ _ _    |___  |",
"    |    \\ ___   | | | | |_ _ _|  _|",
"    |  |  |  _|  | | | |   | | |_|  ",
"    |____/|_|    |_____|_|_|_  |_|  ",
"                           |___|    ")
  cat(logo, sep = "\n")
}

