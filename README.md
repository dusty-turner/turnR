
<!-- README.md is generated from README.Rmd. Please edit that file -->
turnR
=====

<!-- badges: start -->
<!-- badges: end -->
The turnR package contains several functions that I find useful. Feel free to use them and recomended changes and updates as you desire. Thanks!

Installation
------------

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("dusty-turner/turnR")
```

Example `theme_turnR`
---------------------

This is an example which shows you how to use the `theme_turnR` function for ggplot2.

``` r
library(turnR)
data("diamonds")
diamonds %>%
  ggplot(aes(x=carat,y=price,color=cut,fill=cut)) +
  geom_point() +
  labs(title = "Diamonds Data") +
  theme_turnR()
```

<img src="man/figures/README-example theme_turnR-1.png" width="100%" />

Example 2 `theme_turnR_f`
-------------------------

This is an example which shows you how to use the `theme_turnR_f` function for ggplot2.

``` r
library(turnR)
data("diamonds")
diamonds %>%
  ggplot(aes(x=cut,y=price,color=cut,fill=cut)) +
  geom_violin() +
  labs(title = "Diamonds Data") +
  facet_wrap(~clarity) +
  theme_turnR_f()
```

<img src="man/figures/README-example theme_turnR_f-1.png" width="100%" />
