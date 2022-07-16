library(tidyverse)
library(readr)

select_specialty_hospital_saginaw <- read_csv("Price Transparency Project/25-1890958_Select_Specialty_Hospital-Saginaw_standardcharges.csv") |> 
  mutate(hospital_code = "25_1890958",
         hospital_name = "Select Specialty Hospital",
         city = "Saginaw")

select_specialty_hospital_northwest_detroit <- read_csv("Price Transparency Project/26-3231685_Select_Specialty_Hospital-Northwest_Detroit_standardcharges.csv") |> 
  mutate(hospital_code = "26_3231685",
         hospital_name = "Select Specialty Hospital",
         city = "Northwest Detroit")

