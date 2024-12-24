#' Run the ABI Shiny Application
#'
#' This function launches the standalone version of the ABI Shiny application for helminth species delimitation.
#'
#' @param options A named list of options to be passed to the `shinyAppDir` function. Defaults to an empty list.
#' @return Opens the Shiny application in a web browser.
#' @export
#'
#' @examples
#' # Run the ABI application with default settings
#' run_app_ABI()
#'
#' # Run the ABI application with custom options
#' run_app_ABI(options = list(port = 8080))

run_app_ABI <- function(options = list()) {
  app_dir <- system.file("ABI", package = "ABI")
  shiny::shinyAppDir(app_dir, options = options)
}
