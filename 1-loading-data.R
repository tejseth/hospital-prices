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

select_specialty_grosse_pointe <- read_csv("Price Transparency Project/38-3345654_Select_Specialty_Hospital-Grosse_Pointe_standardcharges.csv") |> 
  mutate(hospital_code = "38_3345654",
         hospital_name = "Select Specialty Hospital",
         city = "Grosse Pointe") |> 
  dplyr::select(-PHARMACY_NDC)

select_specialty_macomb <- read_csv("Price Transparency Project/38-3345654_Select_Specialty_Hospital-Macomb_standardcharges.csv") |> 
  mutate(hospital_code = "38_3345654",
         hospital_name = "Select Specialty Hospital",
         city = "Macomb") |> 
  dplyr::select(-PHARMACY_NDC)

select_specialty_pontiac <- read_csv("Price Transparency Project/38-3345654_Select_Specialty_Hospital-Pontiac_standardcharges.csv") |> 
  mutate(hospital_code = "38_3345654",
         hospital_name = "Select Specialty Hospital",
         city = "Pontiac") |> 
  dplyr::select(-PHARMACY_NDC)

select_specialty_ann_arbor <- read_csv("Price Transparency Project/38-3389548_Select_Specialty_Hospital-Ann_Arbor_standardcharges.csv") |> 
  mutate(hospital_code = "38_3389548",
         hospital_name = "Select Specialty Hospital",
         city = "Ann Arbor") |> 
  dplyr::select(-PHARMACY_NDC)

# McLaren Caro Community Hospital can't be read in
# Michigan Medicine can't be a XML (file is too big)
# Kalkaska Memorial Health Center can't be a json
# Munson Healthcare Cadillac Hospital can't be a json
# Munson Healthcare Grayling Hospital can't be a json

select_specialty_battle_creek <- read_csv("Price Transparency Project/75-1962822_Select_Specialty_Hospital-Battle_Creek_standardcharges.csv") |> 
  mutate(hospital_code = "75_1962822",
         hospital_name = "Select Specialty Hospital",
         city = "Battle Creek") |> 
  dplyr::select(-PHARMACY_NDC)

# 101000 Parent HFHS Henry Ford can't be a XML
# 103000 Parent HFHS Kingswood can't be a XML
# 104000 Parent HFHS West Bloomfield can't be a XML
# 105000 Parent HFHS Wyandotte can't be a XML
# 106000 Parent HFHS Macomb Clinton Township can't be a XML
# 112000 Parent HFHS Allegiance Hospital can't be a XML
# Huron Valley can't be a json
# DMC Sinai can't be a json
# Harper University Hospital can't be a json

# midland_medical_center <- read_csv("Price Transparency Project/380833014_midmichigan-medical-center-midland_standardcharges.csv") 
# names(midland_medical_center) <- midland_medical_center[11,]
# midland_medical_center <- midland_medical_center[-11,]
# midland_medical_center <- midland_medical_center |> 
#   mutate(hospital_code = "380833014",
#          hospital_name = "MidMichigan Medical Center",
#          city = "Midland") |> 
#   dplyr::select(CHARGE_CODE = `CDM Charge Code`, CHARGE_DESCRIPTION = `Charge / Procedure / Supply Code Description`,
#                 CHARGE = `Gross Charge`, REVENUE_CODE = `Revenue Code`, CPT_CODE = `NDC`, hospital_code,
#                 hospital_name, city)

beaumont_dearborn <- read_csv("Price Transparency Project/381405141_beaumont-hospital-dearborn_hospital-standardcharges (1).csv")
names(beaumont_dearborn) <- beaumont_dearborn[1,]
beaumont_dearborn <- beaumont_dearborn[-1,]
beaumont_dearborn <- beaumont_dearborn |>
  mutate(hospital_code = "381405141",
         hospital_name = "Beaumont",
         city = "Dearborn", 
         CPT_CODE = "") |>
  dplyr::select(CHARGE_CODE = CODE, CHARGE_DESCRIPTION = PROCEDURE_DESCRIPTION, 
                CHARGE = `GROSS CHARGE`, REVENUE_CODE = REV_CODE, CPT_CODE, hospital_code,
                hospital_name, city)


beaumont_taylor <- read_csv("Price Transparency Project/381405141_beaumont-hospital-taylor_hospital-standardcharges.csv") 
names(beaumont_taylor) <- beaumont_taylor[1,]
beaumont_taylor <- beaumont_taylor[-1,]
beaumont_taylor <- beaumont_taylor |>
  mutate(hospital_code = "381405141",
         hospital_name = "Beaumont",
         city = "Taylor", 
         CPT_CODE = "") |> 
  dplyr::select(CHARGE_CODE = CODE, CHARGE_DESCRIPTION = PROCEDURE_DESCRIPTION, 
                CHARGE = `GROSS CHARGE`, REVENUE_CODE = REV_CODE, CPT_CODE, hospital_code,
                hospital_name, city)

# beaumont_trenton <- read_csv("Price Transparency Project/381405141_beaumont-hospital-trenton_hospital-standardcharges.csv") |> 
# names(beaumont_trenton) <- beaumont_trenton[1,]
# beaumont_trenton <- beaumont_trenton[-1,]
# beaumont_trenton <- beaumont_trenton |>
#   mutate(hospital_code = "381405141",
#          hospital_name = "Beaumont",
#          city = "Trenton") |> 
#   dplyr::select(CHARGE_CODE = CODE, CHARGE_DESCRIPTION = PROCEDURE_DESCRIPTION, 
#                 CHARGE = `GROSS CHARGE`, REVENUE_CODE = REV_CODE, hospital_name,
#                 hospital_name, city)
# 
# beaumont_wayne <- read_csv("Price Transparency Project/381405141_beaumont-hospital-wayne_hospital-standardcharges.csv") |> 
# names(beaumont_wayne) <- beaumont_wayne[1,]
# beaumont_wayne <- beaumont_wayne[-1,]
# beaumont_wayne <- beaumont_wayne |>
#   mutate(hospital_code = "381405141",
#          hospital_name = "Beaumont",
#          city = "Wayne") |> 
#   dplyr::select(CHARGE_CODE = CODE, CHARGE_DESCRIPTION = PROCEDURE_DESCRIPTION, 
#                 CHARGE = `GROSS CHARGE`, REVENUE_CODE = REV_CODE, hospital_name,
#                 hospital_name, city)

beaumont_farmington_hills <- read_csv("Price Transparency Project/381426919_beaumont-hospital-farmington-hills_hospital-standardcharges.csv")
names(beaumont_farmington_hills) <- beaumont_farmington_hills[1,]
beaumont_farmington_hills <- beaumont_farmington_hills[-1,]
beaumont_farmington_hills <- beaumont_farmington_hills |> 
  mutate(hospital_code = "381426919",
         hospital_name = "Beaumont",
         city = "Farmington Hills",
         CPT_CODE = "") |> 
  dplyr::select(CHARGE_CODE = CODE, CHARGE_DESCRIPTION = PROCEDURE_DESCRIPTION, 
                CHARGE = `GROSS CHARGE`, REVENUE_CODE = REV_CODE, CPT_CODE, hospital_code,
                hospital_name, city) 

midmichigan_gratiot <- read_csv("Price Transparency Project/381437919_midmichigan-medical-center-gratiot_standardcharges.csv")
names(midmichigan_gratiot) <- midmichigan_gratiot[11,]
midmichigan_gratiot <- midmichigan_gratiot[-11,]
midmichigan_gratiot <- midmichigan_gratiot |> 
  dplyr::select(CHARGE_CODE = `CDM Charge Code`, CHARGE_DESCRIPTION = `Charge / Procedure / Supply Code Description`,
                CHARGE = `Gross Charge`, REVENUE_CODE = `Revenue Code`, CPT_CODE = `Code (CPT / HCPCS / MS-DRG)`) |> 
  mutate(hospital_code = "381437919",
         city = "Alma",
         hospital_name = "MidMichigan Medical Center - Gratiot")

beaumont_grosse_pointe <- read_csv("Price Transparency Project/381459362_beaumont-hospital-grosse-pointe_hospital-standardcharges.csv")
names(beaumont_grosse_pointe) <- beaumont_grosse_pointe[1,]
beaumont_grosse_pointe <- beaumont_grosse_pointe[-1,]
beaumont_grosse_pointe <- beaumont_grosse_pointe |> 
  dplyr::select(CHARGE_CODE = Code, CHARGE_DESCRIPTION = `Procedure Description`, 
              CHARGE = `GROSS CHARGE`, REVENUE_CODE = REV_CODE) |> 
  mutate(CPT_CODE = "",
         hospital_code = "381459362",
         hospital_name = "Beaumont",
         city = "Grosse Pointe")

beaumont_royal_oak <- read_csv("Price Transparency Project/381459362_beaumont-hospital-royal-oak_hospital-standardcharges.csv")
names(beaumont_royal_oak) <- beaumont_royal_oak[1,]
beaumont_royal_oak <- beaumont_royal_oak[-1,]
beaumont_royal_oak <- beaumont_royal_oak |> 
  mutate(hospital_code = "381459362",
         hospital_name = "Beaumont",
         city = "Royal Oak",
         CPT_CODE = "") |> 
  dplyr::select(CHARGE_CODE = CODE, CHARGE_DESCRIPTION = PROCEDURE_DESCRIPTION, 
                CHARGE = `GROSS CHARGE`, REVENUE_CODE = REV_CODE, CPT_CODE, hospital_code,
                hospital_name, city) 

beaumont_troy <- read_csv("Price Transparency Project/381459362_beaumont-hospital-troy_hospital-standardcharges.csv")
names(beaumont_troy) <- beaumont_troy[1,]
beaumont_troy <- beaumont_troy[-1,]
beaumont_troy <- beaumont_troy |> 
  mutate(hospital_code = "381459362",
         hospital_name = "Beaumont",
         city = "Troy",
         CPT_CODE = "") |> 
  dplyr::select(CHARGE_CODE = CODE, CHARGE_DESCRIPTION = PROCEDURE_DESCRIPTION, 
                CHARGE = `GROSS CHARGE`, REVENUE_CODE = REV_CODE, CPT_CODE, hospital_code,
                hospital_name, city) 

midmichigan_clare <- read_csv("Price Transparency Project/381518643_midmichigan-medical-center-clare_standardcharges.csv")
names(midmichigan_clare) <- midmichigan_clare[11,]
midmichigan_clare <- midmichigan_clare[-11,]
midmichigan_clare <- midmichigan_clare |> 
  dplyr::select(CHARGE_CODE = `CDM Charge Code`, CHARGE_DESCRIPTION = `Charge / Procedure / Supply Code Description`,
                CHARGE = `Gross Charge`, REVENUE_CODE = `Revenue Code`, CPT_CODE = `Code (CPT / HCPCS / MS-DRG)`) |> 
  mutate(hospital_code = "381437919",
         city = "Clare",
         hospital_name = "MidMichigan Medical Center")

midmichigan_alpena <- read_csv("Price Transparency Project/386000029_midmichigan-medical-center-alpena_standardcharges.csv")
names(midmichigan_alpena) <- midmichigan_alpena[11,]
midmichigan_alpena <- midmichigan_alpena[-11,]
midmichigan_alpena <- midmichigan_alpena |> 
  dplyr::select(CHARGE_CODE = `CDM Charge Code`, CHARGE_DESCRIPTION = `Charge / Procedure / Supply Code Description`,
                CHARGE = `Gross Charge`, REVENUE_CODE = `Revenue Code`, CPT_CODE = `Code (CPT / HCPCS / MS-DRG)`) |> 
  mutate(hospital_code = "386000029",
         city = "Alpena",
         hospital_name = "MidMichigan Medical Center")

midmichigan_gladwin <- read_csv("Price Transparency Project/386020434_midmichigan-medical-center-gladwin_standardcharges.csv")
names(midmichigan_gladwin) <- midmichigan_gladwin[11,]
midmichigan_gladwin <- midmichigan_gladwin[-11,]
midmichigan_gladwin <- midmichigan_gladwin |> 
  dplyr::select(CHARGE_CODE = `CDM Charge Code`, CHARGE_DESCRIPTION = `Charge / Procedure / Supply Code Description`,
                CHARGE = `Gross Charge`, REVENUE_CODE = `Revenue Code`, CPT_CODE = `Code (CPT / HCPCS / MS-DRG)`) |> 
  mutate(hospital_code = "386020434",
         city = "Gladwin",
         hospital_name = "MidMichigan Medical Center")

midmichigan_west_branch <- read_csv("Price Transparency Project/464088182_midmichigan-medical-center-west-branch_standardcharges.csv")
names(midmichigan_west_branch) <- midmichigan_west_branch[11,]
midmichigan_west_branch <- midmichigan_west_branch[-11,]
midmichigan_west_branch <- midmichigan_west_branch |> 
  dplyr::select(CHARGE_CODE = `CDM Charge Code`, CHARGE_DESCRIPTION = `Charge / Procedure / Supply Code Description`,
                CHARGE = `Gross Charge`, REVENUE_CODE = `Revenue Code`, CPT_CODE = `Code (CPT / HCPCS / MS-DRG)`) |> 
  mutate(hospital_code = "464088182",
         city = "West Branch",
         hospital_name = "MidMichigan Medical Center")

binded <- do.call("rbind", list(beaumont_dearborn, beaumont_farmington_hills, beaumont_grosse_pointe,
                                beaumont_royal_oak, beaumont_taylor, beaumont_troy, karamanos_cancer_institute,
                                mclaren_bay_region, mclaren_bay_special_care, mclaren_central, mclaren_flint,
                                mclaren_greater_lansing, mclaren_lapeer, mclaren_macomb, mclaren_northern_michigan,
                                mclaren_port_huron, midmichigan_alpena, midmichigan_clare, midmichigan_gladwin, 
                                midmichigan_gratiot, midmichigan_west_branch, select_specialty_ann_arbor,
                                select_specialty_battle_creek, select_specialty_flint, select_specialty_grosse_pointe, 
                                select_specialty_hospital_northwest_detroit, select_specialty_hospital_saginaw,
                                select_specialty_hospital_wyandotte, select_specialty_hospital_wyandotte,
                                select_specialty_macomb, select_specialty_pontiac))
