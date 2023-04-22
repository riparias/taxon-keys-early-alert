#' R code to automatically run all chunks of retrieve_compare_taxon_keys.Rmd
library(knitr)

# create temporary R file
tempR <- tempfile(fileext = ".R")
knitr::purl("./src/retrieve_compare_taxon_keys.Rmd", output=tempR)
source(tempR)
unlink(tempR)
