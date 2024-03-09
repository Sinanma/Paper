####Preamble####
# Pourpose: Creating the linear model of shelter usage in Toronto
# Author: Jerry Lu (Yen-Chia Lu), Sinan Ma and Che-Yu Wang
# Email: Jerry33692@gmail.com, sinan.ma@mail.utoronto.ca, Cheyu.wang@mail.utoronto.ca
# Date: 12, March 2024

####Workspace setup####
library(tidyverse)
install.packages("rstanarm")
install.packages("Rcpp")
install.packages("here")
install.packages("readr")
library(readr)
library(here)
library(Rcpp)
library(rstanarm)


#### read data ####
toronto_shelters_clean <- read_csv("data/analysis_data/analysis_data.csv")
#### model data ####
toronto_shelters_data_first_model_rstanarm <-
  stan_glm(
    formula = occupancy_rate_rooms ~ capacity_actual_room + service_user_count,
    data = toronto_shelters_clean,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5),
    prior_intercept = normal(location = 0, scale = 2.5),
    prior_aux = exponential(rate = 1),
    seed = 1000
  )

#### save model ####
saveRDS(
  toronto_shelters_data_first_model_rstanarm,
  file = "models/toronto_shelters_data_first_model_rstanarm"
)
