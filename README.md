
# paperPackage

The goal of paperPackage is to scaffold a vignettes folder with the necessary template files to write an academic paper. The template is taken from https://www.jstatsoft.org/style.

## Installation

You can install the development version of paperPackage like so:

``` r
devtools::install_github("dheimgartner/paperPackage")
```

## Example

This is a basic example which shows you how to use the functionality:

``` r
library(paperPackage)
paperPackage::scaffold()
```

...write your paper in `vignettes/article.Rnw` (feel free to rename the file). Iteratively compile the paper:

``` r
devtools::build_vignettes()
```

which produces the `.pdf` in `./doc`. If you want to use the paper as a vignette, follow the steps as described in https://www.jstatsoft.org/style#how-can-i-turn-my-jss-paper-into-an-r-package-vignette.
