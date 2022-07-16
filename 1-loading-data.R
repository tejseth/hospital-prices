library(tidyverse)
library(readr)
library(rjson)

select_specialty_hospital_saginaw <- read_csv("Price Transparency Project/25-1890958_Select_Specialty_Hospital-Saginaw_standardcharges.csv") |> 
  mutate(hospital_code = "25_1890958",
         hospital_name = "Select Specialty Hospital",
         city = "Saginaw") |> 
  dplyr::select(-PHARMACY_NDC)

select_specialty_hospital_northwest_detroit <- read_csv("Price Transparency Project/26-3231685_Select_Specialty_Hospital-Northwest_Detroit_standardcharges.csv") |> 
  mutate(hospital_code = "26_3231685",
         hospital_name = "Select Specialty Hospital",
         city = "Northwest Detroit") |> 
  dplyr::select(-PHARMACY_NDC)

select_specialty_hospital_wyandotte <- read_csv("Price Transparency Project/26-3231685_Select_Specialty_Hospital-Wyandotte_standardcharges.csv") |> 
  mutate(hospital_code = "26_3231685",
         hospital_name = "Select Specialty Hospital",
         city = "Wyandotte") |> 
  dplyr::select(-PHARMACY_NDC)

# McLarenStLukes doesn't load
# Munson Healthcare Manistee can't be a json

mclaren_macomb <- read_csv("Price Transparency Project/38-1218516_McLarenMacomb_standardcharges.csv") |> 
  mutate(hospital_code = "38_1218516",
         hospital_name = "McLaren",
         city = "Macomb") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE/PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = CPT,
                hospital_code:city)

# Ostego Memorial can't be a json
# Munson Medical Center can't be a json

mclaren_port_huron <- read_csv("Price Transparency Project/38-1369611_McLarenPortHuron_standardcharges.csv") |> 
  mutate(hospital_code = "38_1369611",
         hospital_name = "McLaren",
         city = "Port Huron") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE/PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = CPT,
                hospital_code:city)

# Munson Paul Oliver can't be a json

mclaren_central <- read_csv("Price Transparency Project/38-1420304_McLarenCentral_standardcharges.csv") |> 
  mutate(hospital_code = "38_1420304",
         hospital_name = "McLaren",
         city = "Central") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE/PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = CPT,
                hospital_code:city)

# McLaren Oakland can't be loaded in

mclaren_greater_lansing <- read_csv("Price Transparency Project/38-1434090_McLarenGreaterLansing_standardcharges.csv") |> 
  mutate(hospital_code = "38_1434090",
         hospital_name = "McLaren",
         city = "Greater Lansing") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = `CPT/HCPCS`,
                hospital_code:city)

# Munson Charlevoix can't be a json
# McLaren Thumb Region can't be loaded

karamanos_cancer_institute <- read_csv("Price Transparency Project/38-1613280_KarmanosCancerInstitute_standardcharges.csv") |> 
  mutate(hospital_code = "38_1613280",
         hospital_name = "Karamanos Cancer Institute",
         city = "Detroit") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE/PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = CPT,
                hospital_code:city)

mclaren_bay_region <- read_csv("Price Transparency Project/38-1976271_McLarenBayRegion_standardcharges.csv") |> 
  mutate(hospital_code = "38_1976271",
         hospital_name = "McLaren",
         city = "Bay Region") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE/PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = CPT,
                hospital_code:city)

mclaren_northern_michigan <- read_csv("Price Transparency Project/38-2146751_McLarenNorthernMichigan_standardcharges.csv") |> 
  mutate(hospital_code = "38_2146751",
         hospital_name = "McLaren",
         city = "Northern Michigan") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE/PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = CPT,
                hospital_code:city)

mclaren_flint <- read_csv("Price Transparency Project/38-2383119_McLarenFlint_standardcharges.csv") |> 
  mutate(hospital_code = "38_2383119",
         hospital_name = "McLaren",
         city = "Flint") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE/PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = CPT,
                hospital_code:city)

mclaren_lapeer <- read_csv("Price Transparency Project/38-2689033_McLarenLapeer_standardcharges.csv") |> 
  mutate(hospital_code = "38_2689033",
         hospital_name = "McLaren",
         city = "Lapeer") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE/PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = CPT,
                hospital_code:city)

mclaren_bay_special_care <- read_csv("Price Transparency Project/38-3161753_McLarenBaySpecialCare_standardcharges.csv") |> 
  mutate(hospital_code = "38_3161753",
         hospital_name = "McLaren",
         city = "Bay Special Care") |> 
  dplyr::select(CHARGE_CODE = `CHARGE CODE/PACKAGE`, CHARGE_DESCRIPTION = `CHARGE DESCRIPTION`,
                CHARGE = `GROSS CHARGES`, REVENUE_CODE = `REV CODE`, CPT_CODE = CPT,
                hospital_code:city)

select_specialty_flint <- read_csv("Price Transparency Project/38-3329100_Select_Specialty_Hospital-Flint_standardcharges.csv") |> 
  mutate(hospital_code = "38_3329100",
         hospital_name = "Select Specialty Hospital",
         city = "Flint") |> 
  dplyr::select(-PHARMACY_NDC)





