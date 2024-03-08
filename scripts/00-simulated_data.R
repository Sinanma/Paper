#### Preamble ####
# Purpose: simulate on shelter usage in Toronto
# Author: Jerry Lu (Yen-Chia Lu), Sinan Ma and Che-Yu Wang
# Email: Jerry33692@gmail.com, sinan.ma@mail.utoronto.ca, Cheyu.wang@mail.utoronto.ca
# Date: 12, March 2024

#### Workspace setup ####
install.packages("tidyverse")
library(tidyverse)

#### Simulate ####
set.seed(1300)

simulated_Shelter_service_data <-
  tibble(
    date = rep(x = as.Date("2023-01-01") + c(0:364), times = 3),
    # Based on Eddelbuettel: https://stackoverflow.com/a/21502386
    shelter = c(
      rep(x = "Service_user 1", times = 365),
      rep(x = "Service_user 2", times = 365),
      rep(x = "Service_user 3", times = 365)
    ),
    number_service_user =
      rpois(
        n = 365 * 3,
        lambda = 100
      ) # Draw 1,095 times from the Poisson distribution
  )

head(simulated_Shelter_service_data)