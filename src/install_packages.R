# get packages installed on machine
installed <- rownames(installed.packages())
# specify packages we need
required <- c("readr", "here", "dplyr",
              "rgbif", "purrr", "tidylog",
              "knitr", # to extract R code from Rmd in run_*.R file(s)
              "assertthat" # to run assertions
)
# install packages if needed
if (!all(required %in% installed)) {
  pkgs_to_install <- required[!required %in% installed]
  print(paste("Packages to install:", paste(pkgs_to_install, collapse = ", ")))
  install.packages(pkgs_to_install)
}
