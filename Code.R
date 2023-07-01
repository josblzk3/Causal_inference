
## MY PERSONAL DATA

library(readxl)
library(dplyr) 
library(readxl)
library(dplyr)
data = read_xlsx("YTP_data_final.xlsx")
FDI = read_excel("YFDI_data.xlsx")
ICT = read_excel("YICT_data.xlsx")
CPI = read_excel("YCPI_data.xlsx")
GDP = read_excel("YGDP_data.xlsx")
GFCF = read_excel("YGFCF_data.xlsx")
TO = read_excel("YTO_data.xlsx")
PAT = read_excel("YPatent_data.xlsx")
NMIG = read_excel("YNMigration_data.xlsx")
JOUR = read_excel("YJournals_data.xlsx")
NOR = read_excel("YNoR_data.xlsx")
POP = read_excel("YPOP_data.xlsx")
SAV = read_excel("YSAVE_data.xlsx")
REXR = read_excel("YREXR_data.xlsx")
EDUEXPE = read_excel("YEDUEXPE_data.xlsx")
LABPROD = read.csv("YLab_prod_data.csv")
NOR_OECD = read.csv("YNoR_data.csv")
TEdu = read.csv("YTEdu_data.csv")
BROADBAND = read_excel("YBroadband_subs_data.xlsx")
CELLULAR = read_excel("YCellular_subs_data.xlsx")
FERT = read_excel("YFert_data.xlsx")
LOGISTICS = read_excel("YLogistics_perf_data.xlsx")
PAT_NON = read_excel("YPAT_non_data.xlsx")
TIMEEXP = read_excel("YTime_export_data.xlsx") 
UNEMP = read_excel("YUnemploy_data.xlsx")




POLSTAB = read_excel("PV_excel.xlsx") # to check country name
POLSTAB["year"][POLSTAB["year"] == "EIU08PV"] = "2008"
POLSTAB["year"][POLSTAB["year"] == "EIU09PV"] = "2009"
POLSTAB["year"][POLSTAB["year"] == "EIU10PV"] = "2010"
POLSTAB["year"][POLSTAB["year"] == "EIU11PV"] = "2011"
POLSTAB["year"][POLSTAB["year"] == "EIU12PV"] = "2012"
POLSTAB["year"][POLSTAB["year"] == "EIU13PV"] = "2013"
POLSTAB["year"][POLSTAB["year"] == "EIU14PV"] = "2014"
POLSTAB["year"][POLSTAB["year"] == "EIU15PV"] = "2015"
POLSTAB["year"][POLSTAB["year"] == "EIU16PV"] = "2016"
POLSTAB["year"][POLSTAB["year"] == "EIU17PV"] = "2017"
POLSTAB["year"][POLSTAB["year"] == "EIU18PV"] = "2018"
POLSTAB["year"][POLSTAB["year"] == "EIU019PV"] = "2019"


GE = read_excel("GE_excel.xlsx") # to check country name
GE["year"][GE["year"] == "EIU08GE"] = "2008"
GE["year"][GE["year"] == "EIU09GE"] = "2009"
GE["year"][GE["year"] == "EIU10GE"] = "2010"
GE["year"][GE["year"] == "EIU11GE"] = "2011"
GE["year"][GE["year"] == "EIU12GE"] = "2012"
GE["year"][GE["year"] == "EIU13GE"] = "2013"
GE["year"][GE["year"] == "EIU14GE"] = "2014"
GE["year"][GE["year"] == "EIU15GE"] = "2015"
GE["year"][GE["year"] == "EIU16GE"] = "2016"
GE["year"][GE["year"] == "EIU17GE"] = "2017"
GE["year"][GE["year"] == "EIU18GE"] = "2018"
GE["year"][GE["year"] == "EIU019GE"] = "2019"


RQ = read_excel("RQ_excel.xlsx") # to check country name
RQ["year"][RQ["year"] == "EIU08RQ"] = "2008"
RQ["year"][RQ["year"] == "EIU09RQ"] = "2009"
RQ["year"][RQ["year"] == "EIU10RQ"] = "2010"
RQ["year"][RQ["year"] == "EIU11RQ"] = "2011"
RQ["year"][RQ["year"] == "EIU12RQ"] = "2012"
RQ["year"][RQ["year"] == "EIU13RQ"] = "2013"
RQ["year"][RQ["year"] == "EIU14RQ"] = "2014"
RQ["year"][RQ["year"] == "EIU15RQ"] = "2015"
RQ["year"][RQ["year"] == "EIU16RQ"] = "2016"
RQ["year"][RQ["year"] == "EIU17RQ"] = "2017"
RQ["year"][RQ["year"] == "EIU18RQ"] = "2018"
RQ["year"][RQ["year"] == "EIU019RQ"] = "2019"


data1 = merge(data, FDI,  by = c("country_name", "year"))
data2 = merge(data1, ICT,  by = c("country_name", "year"))
data3 = merge(data2, CPI,  by = c("country_name", "year"))
data4 = merge(data3, GDP,  by = c("country_name", "year"))
data5 = merge(data4, GFCF,  by = c("country_name", "year"))
data6 = merge(data5, TO,  by = c("country_name", "year"))
data7 = merge(data6, JOUR,  by = c("country_name", "year"))
data8 = merge(data7, NMIG,  by = c("country_name", "year"))
data9 = merge(data8, PAT,  by = c("country_name", "year"))
data10 = merge(data9, NOR,  by = c("country_name", "year"))
data11 = merge(data10, POP,  by = c("country_name", "year"))
data12 = merge(data11, SAV,  by = c("country_name", "year"))
data13 = merge(data12, REXR,  by = c("country_name", "year"))
data14 = merge(data13, EDUEXPE,  by = c("country_name", "year"))
data15 = merge(data14, POLSTAB,  by = c("country_name", "year"))
data16 = merge(data15, GE,  by = c("country_name", "year"))
data17 = merge(data16, RQ,  by = c("country_name", "year"))


data18 = merge(data17, LABPROD,  by = c("country_name", "year"))
data19 = merge(data18, NOR_OECD,  by = c("country_name", "year"))
data20 = merge(data19, TEdu,  by = c("country_name", "year"))


data21 = merge(data20, BROADBAND,  by = c("country_name", "year"))
data22 = merge(data21, CELLULAR,  by = c("country_name", "year"))
data23 = merge(data22, FERT,  by = c("country_name", "year"))
data24 = merge(data23, LOGISTICS,  by = c("country_name", "year"))
data25 = merge(data24, PAT_NON,  by = c("country_name", "year"))
data26 = merge(data25, TIMEEXP,  by = c("country_name", "year"))
data27 = merge(data26, UNEMP,  by = c("country_name", "year"))


dataset = data27


#dataset <- dataset[!(dataset$country_name %in% c("Australia", "Switzerland", "Iceland")),]
#dataset <- dataset[!(dataset$country_name %in% c("Guatemala", "Armenia", "North Macedonia", "Costa Rica", "Guatelama", "Uruguay", "South Africa", "Argentina", "Colombia", "Brazil", "Canada", "Japan", "Israel", "Chile")),]
unique(dataset$country_name)


dataset <- dataset[(dataset$year %in% c("2014", "2015", "2016", "2017","2018")),]
dataset <- dataset[,-c(8,10,21,22)]
### ATTENTION, SHULD DELETE THE OBSERVATIONS
#dataset[is.na(dataset)] <- 0
dataset[dataset == ".."] = NA
#dataset = na.omit(dataset)


dataset$HET = as.numeric(dataset$HET) 
colnames(dataset)[colnames(dataset) == "HET"] ="HTE"

names(dataset)[names(dataset) == "R&D"] <- "rd"
dataset$rd = as.numeric(dataset$rd) 



dataset$FDI_net = as.numeric(dataset$FDI_net)
#dataset$ICT = as.numeric(dataset$ICT) 
dataset$Skills = as.numeric(dataset$Skills)
dataset$Industry_activity = as.numeric(dataset$Industry_activity)
dataset$Access_to_finance = as.numeric(dataset$Access_to_finance)
dataset$CPI = as.numeric(dataset$CPI) 
dataset$GDP = as.numeric(dataset$GDP) 
dataset$GFCF = as.numeric(dataset$GFCF) 
dataset$Trade_openness = as.numeric(dataset$Trade_openness) 
dataset$ST_articles = as.numeric(dataset$ST_articles) 
dataset$net_migration = as.numeric(dataset$net_migration) 
dataset$Patent_resident = as.numeric(dataset$Patent_resident) 
#dataset$NoR = as.numeric(dataset$NoR) 
#dataset$POP = as.numeric(dataset$POP) 
dataset$Savings = as.numeric(dataset$Savings) 
dataset$RealEXR = as.numeric(dataset$RealEXR) 
dataset$EDUEXPE = as.numeric(dataset$EDUEXPE) 
dataset$Pol_stab = as.numeric(dataset$Pol_stab) 
dataset$Gov_effect = as.numeric(dataset$Gov_effect) 
dataset$Reg_qual = as.numeric(dataset$Reg_qual) 
dataset$Lab_prod = as.numeric(dataset$Lab_prod) 
dataset$NoR_OECD= as.numeric(dataset$NoR_OECD) 
dataset$Broadband_subs= as.numeric(dataset$Broadband_subs) 
dataset$Cellular_subs= as.numeric(dataset$Cellular_subs) 
dataset$Unemployment= as.numeric(dataset$Unemployment) 
dataset$Time_export= as.numeric(dataset$Time_export) 
dataset$Logistics_perf= as.numeric(dataset$Logistics_perf) 
dataset$Fertiliry_rate= as.numeric(dataset$Fertiliry_rate) 
dataset$Patent_nonresident= as.numeric(dataset$Patent_nonresident) 


colnames(dataset)[colnames(dataset) == "Skills"] ="Extent_HSE"
#colnames(dataset)[colnames(dataset) == "Access_to_finance"] ="Access_fin"
colnames(dataset)[colnames(dataset) == "Trade_openness"] ="Trade_open"
colnames(dataset)[colnames(dataset) == "EDUEXPE"] ="Edu_expe"
colnames(dataset)[colnames(dataset) == "net_migration"] ="Net_migration"



library(stargazer)

#stargazer(dataset[,c(6:34)],nobs = FALSE, min.max = FALSE)
#?stargazer
## Analysis

library(hdm)

dim(dataset)

y = dataset[, 6, drop = F]
d = dataset[, 7, drop = F]
X = as.matrix(dataset)[, -c(1:8)]

dims <- dim(X)
X <- as.numeric(X)
dim(X) <- dims    

varnames = colnames(dataset)

doublesel.effect = rlassoEffect(x = X, y = y, d = d, method = "double selection")
summary(doublesel.effect)
stargazer(doublesel.effect)

OLS = lm(HTE ~ rd + Extent_HSE + Industry_activity + Net_migration + Lab_prod + NoR_OECD + TEdu + Cellular_subs, data = dataset)
summary(OLS)  
stargazer(OLS)









