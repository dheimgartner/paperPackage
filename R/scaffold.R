#' Scaffold a Paper Vignette
#'
#' Scaffolds a vignette paper using a template.
#'
#' @param template Template to use (needs to match one of the templates available in `inst/templates`).
#' @param file_name File name for the article vignette (defaults to `"article"`).
#' @param .warn if `TRUE`, warns if file from source is already in target.
#' @return Character vector with files already in target.
#' @export
scaffold <- function(template, file_name = "article", .warn = FALSE) {
  dir <- "vignettes"
  src <- system.file("templates", package = "paperPackage")
  templates <- list.dirs(src, full.names = FALSE, recursive = FALSE)
  templates <- templates[templates != ""]
  if (!(template %in% templates)) {
    stop(template, " is not available as a template. Available templates are ", deparse(templates))
  }
  path <- paste(src, template, sep = "/")
  ## copy to tmp
  tmp <- tempdir()
  copy(path, tmp)
  ## rename article
  file.rename(paste0(tmp, "/article.Rnw"), paste0(tmp, "/", file_name, ".Rnw"))
  ## copy from tmp to dir
  out <- copy(tmp, dir, .warn = .warn)
  out
}
