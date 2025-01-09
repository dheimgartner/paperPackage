scaffold <- function() {
  dir <- "vignettes"
  if (dir.exists(dir)) {
    stop(dir, " directory already exists.")
  }
  dir.create(dir)
  src <- system.file("template", package = "paperPackage")
  file.copy(src, ".", recursive = TRUE)
  file.rename("template", dir)
  invisible(1)
}
