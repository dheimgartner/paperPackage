devtools::load_all()

unlink("./vignettes", recursive = TRUE)
scaffold("Minimal")
devtools::build_vignettes()
