devtools::load_all()

unlink("./vignettes", recursive = TRUE)
scaffold("Minimal", .warn = TRUE)
scaffold("Minimal", file_name = "foo", .warn = TRUE)
scaffold("Minimal", file_name = "bar")
devtools::build_vignettes()
