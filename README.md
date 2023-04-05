
# fuRious <img src="man/figures/logo.png" align="right" width="120" />

**Author:** [Mark Rieke](https://www.thedatadiary.net/about/) <br>
**License:**
[MIT](https://github.com/markjrieke/fuRious/blob/main/LICENSE)

<!-- badges: start -->

[![R-CMD-check](https://github.com/markjrieke/fuRious/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/markjrieke/fuRious/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Overview

`{fuRious}` is a package for generating a family of movie titles based
on the Fast & Furious series. This is a gag-package created alongside a
submission for a lightening talk at
[posit::conf(2023)](https://posit.co/conference/).

## Installation

This package is not released on CRAN. You can install from github:

``` r
devtools::install_github("markjrieke/fuRious")
```

## Usage

The workhorse of the package is the function `generate_titles()`. By
default, `generate_titles()` will recreate the titles from the Fast &
Furious series.

``` r
library(fuRious)

generate_titles()
```

    #>  [1] "The Fast and the Furious"             
    #>  [2] "2 Fast 2 Furious"                     
    #>  [3] "The Fast and the Furious: Tokyo Drift"
    #>  [4] "Fast & Furious"                       
    #>  [5] "Fast Five"                            
    #>  [6] "Fast & Furious 6"                     
    #>  [7] "Furious 7"                            
    #>  [8] "The Fate of the Furious"              
    #>  [9] "F9"                                   
    #> [10] "Fast X"

You can also generate a new series of titles:

``` r
generate_titles("star", "wars")
```

    #>  [1] "The Star and the Wars"              "2 Star 2 Wars"                     
    #>  [3] "The Star and the Wars: Tokyo Drift" "Star & Wars"                       
    #>  [5] "Star Five"                          "Star & Wars 6"                     
    #>  [7] "Wars 7"                             "The Fate of the Wars"              
    #>  [9] "S9"                                 "Star X"

``` r
generate_titles("iron", "man")
```

    #>  [1] "The Iron and the Man"              "2 Iron 2 Man"                     
    #>  [3] "The Iron and the Man: Tokyo Drift" "Iron & Man"                       
    #>  [5] "Iron Five"                         "Iron & Man 6"                     
    #>  [7] "Man 7"                             "The Fate of the Man"              
    #>  [9] "I9"                                "Iron X"
