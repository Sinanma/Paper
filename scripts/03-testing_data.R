#### Preamble ####
# Purpose: Testing data on 2022 shelter usage.
# Author: Jerry Lu (Yen-Chia Lu), Sinan Ma and Che-Yu Wang
# Email: Jerry33692@gmail.com, sinan.ma@mail.utoronto.ca, Cheyu.wang@mail.utoronto.ca
# Date: 12, March 2024

#### loading packages ####
library(tidyverse)
#### testing data ####
toronto_shelters_clean <- read_csv("data/analysis_data/analysis_data.csv")
####checking the column classes####
toronto_shelters_clean$occupied_beds|>class()=="numeric"
toronto_shelters_clean$occupied_rooms|>class()=="numeric"
toronto_shelters_clean$location_city|>class()=="character"
toronto_shelters_clean$sector|>class()=="character"
toronto_shelters_clean$program_model|>class()=="character"
toronto_shelters_clean$service_user_count|>class()=="numeric"
toronto_shelters_clean$overnight_service_type|>class()=="character"
