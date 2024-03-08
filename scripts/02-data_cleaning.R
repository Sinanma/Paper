#### Preamble ####
# Purpose: Cleaning data on 2022 shelter usage
# Author: Jerry Lu (Yen-Chia Lu), Sinan Ma and Che-Yu Wang
# Email: Jerry33692@gmail.com, sinan.ma@mail.utoronto.ca, Cheyu.wang@mail.utoronto.ca
# Date: 12, March 2024

#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("tidyverse")
install.packages("janitor")

library(opendatatoronto)
library(tidyverse)
library(janitor)

toronto_shelters_clean <-
  clean_names(toronto_shelters) |>
  mutate(occupancy_date = ymd(occupancy_date)) |> 
  select(occupancy_date, 
         occupied_beds,
         occupied_rooms, 
         location_city, 
         sector, 
         program_model,
         service_user_count,
         overnight_service_type)

head(toronto_shelters_clean)
View(toronto_shelters_clean)

write_csv(
  x = toronto_shelters_clean,
  file = "data/analysis_data/analysis_data.csv"
)