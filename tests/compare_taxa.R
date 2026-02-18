library(testthat)
library(dplyr)
library(readr)

input_data <- readr::read_csv(
  file = here("data", "reference", "Species-2026-02-18.csv")
)
alert_species <- readr::read_csv(
  file = here("data", "processed", "alert_species.csv")
)

test_that("Check species names", {
  expect_true(dplyr::setequal(alert_species$canonicalName,input_data$name))
  expect_true(dplyr::setequal(alert_species$key, input_data$gbif_taxon_key))
})
