#' Scaffold a Paper Vignette
#'
#' Scaffolds a vignette paper using the JSS template https://www.jstatsoft.org/style.
#'
#' @param template Template to use (needs to match one of the templates available in `inst/templates`).
#' @return Returns 1 invisibly if all went well.
#' @export
scaffold <- function(template) {
  dir <- "vignettes"
  if (dir.exists(dir)) {
    stop(dir, " directory already exists.")
  }
  dir.create(dir)
  src <- system.file("templates", package = "paperPackage")
  templates <- list.dirs(src, full.names = FALSE, recursive = FALSE)
  templates <- templates[templates != ""]
  if (!(template %in% templates)) {
    stop(template, " is not available as a template. Available templates are ", deparse(templates))
  }
  path <- paste(src, template, sep = "/")
  file.copy(path, ".", recursive = TRUE)
  file.rename(template, dir)
  invisible(1)
}
