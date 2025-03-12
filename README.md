
# paperPackage

The goal of paperPackage is to scaffold a vignettes folder with the necessary 
template files to write an academic paper. Currently templates from the Journal 
of Statistical Software (https://www.jstatsoft.org/style) and the R Journal 
(https://journal.r-project.org/submissions.html) are available.

## Installation

You can install the development version of paperPackage like so:

``` r
devtools::install_github("dheimgartner/paperPackage")
```

## Example

This is a basic example which shows you how to use the functionality (assuming 
that you are in an R package repository, e.g., by calling 
`usethis::create_package(...)` first):

``` r
library(paperPackage)
paperPackage::scaffold(template = "JSS")
```

...write your paper in `vignettes/article.Rnw` (feel free to rename the file).
Iteratively compile the paper:

``` r
devtools::build_vignettes()
```

which produces the `.pdf` in `./doc`. If you want to use the paper as a vignette, 
follow the steps as described in https://www.jstatsoft.org/style#how-can-i-turn-my-jss-paper-into-an-r-package-vignette.
