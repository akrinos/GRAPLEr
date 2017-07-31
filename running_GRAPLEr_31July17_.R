install.packages("httr")
install.packages("RCurl")
install.packages("jsonlite")
install.packages("devtools")
library("devtools")
devtools::install_github("GRAPLE/GRAPLEr")

library(httr)
library(RCurl)
library(jsonlite)
library(GRAPLEr)
devtools::install_github("vahid-dan/GRAPLEr", ref="devel")

devtools::install_github("akrinos/GRAPLEr", ref="devel")
devtools::document(pkg = paste0(getwd()))

setwd("C:/Users/arian_000/Documents/Summer 2017/Carey Lab/PhytoGLM+GRAPLErFiles/New folder")


dir <- "C:/Users/arian_000/Documents/Summer 2017/Carey Lab"

job_desc <- paste0(getwd(), '/job_desc.json')

MyExpRootDir = getwd()
# APIKey = '1CS5B02G1G1OT2O6ZKQHD2ONS6ATUWUUB1C6PMNLEKHMLD83U2OROU88GI7PMIDT'# My normal API key
APIKey = 'I5NH130MGXYO1XMUFY9IFU9SRFBGYEO0RWCQT4IELBEHBMVPFMG8H525CUJ68Q6S'
MyResultsDir <- paste(dir,sep='/','MyResults105k')
#dir.create(MyResultsDir)

graplerURL<-'10.244.36.200'
#graplerURL<-"https://graple.acis.ufl.edu"  # specify web service address for the GRAPLEr.

MyExp <- new("Graple", GWSURL=graplerURL, APIKey = APIKey, ExpRootDir=MyExpRootDir, classKey = '0', ResultsDir=MyResultsDir,
             ExpName="AIK_phytomendota_24July", TempDir = tempdir())
# MyExp <- GrapleRunSweepExperiment(MyExp)

# MyExp <- GrapleCheckExperimentCompletion(MyExp)
# print(MyExp@StatusMsg)
