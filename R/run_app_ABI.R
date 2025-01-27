#' Run the ABIApp Shiny Application
#'
#' This function launches the standalone version of the ABI Shiny application for helminth species delimitation.
#'
#' @param options A named list of options to be passed to the `shinyAppDir` function. Defaults to an empty list.
#' @return Opens the Shiny application in a web browser.
#' @export
#'
#' @examples
#' # Run the ABIApp application with default settings
#' run_ABIApp()
#'
#' # Run the ABI application with custom options
#' run_ABIApp(options = list(port = 8080))

run_ABIApp <- function(options = list()) {
  app_dir <- system.file("ABIApp", package = "ABIApp")
  shiny::shinyAppDir(app_dir, options = options)
}
