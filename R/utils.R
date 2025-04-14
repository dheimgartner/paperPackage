#' Copy
#'
#' Copies all files in source to folder target and returns filenames that were
#' already in target.
#'
#' @param source source directory.
#' @param target target directory.
#' @param .warn if `TRUE`, warns if file from source is already in target.
#'
#' @returns Character vector with files already in target.
#' @keywords internal
copy <- function(source, target, .warn = FALSE) {
  if (!dir.exists(target)) {
    dir.create(target)
  }
  files_source <- list.files(source, recursive = TRUE)
  files_target <- list.files(target, recursive = TRUE)
  in_target <- files_source %in% files_target
  if (.warn && any(in_target)) {
    warning("Files ", deparse(files_source[in_target]), " already in 'target'.")
  }
  if (all(in_target)) {
    return(files_source)
  }
  ffp <- list.files(source, recursive = TRUE, full.names = TRUE)
  for (i in seq_along(files_source)) {
    it <- in_target[i]
    if (it) {
      next
    }
    file.copy(ffp[i], target, overwrite = FALSE)
  }
  return(files_source[in_target])
}
