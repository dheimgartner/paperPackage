% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scaffold.R
\name{scaffold}
\alias{scaffold}
\title{Scaffold a Paper Vignette}
\usage{
scaffold(template, file_name = "article", .warn = FALSE)
}
\arguments{
\item{template}{Template to use (needs to match one of the templates available in \code{inst/templates}).}

\item{file_name}{File name for the article vignette (defaults to \code{"article"}).}

\item{.warn}{if \code{TRUE}, warns if file from source is already in target.}
}
\value{
Character vector with files already in target.
}
\description{
Scaffolds a vignette paper using a template.
}
