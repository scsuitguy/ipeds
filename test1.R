# http://ipeds.r-forge.r-project.org/

#Install the package
install.packages('ipeds', repos=c('http://R-Forge.R-project.org', 'http://lib.stat.cmu.edu/R/CRAN'), dep=TRUE)

#Load the package
library(ipeds)

#List the available functions
ls('package:ipeds')

#These are the data frames included in the package
data(surveys); names(surveys)
data(cipcodes); names(surveys)
data(crosswalk); names(crosswalk)

#Download the directory information
directory = getIPEDSSurvey('HD', 2009)
names(directory); nrow(directory)
unitid = directory[which(directory$instnm == 'Excelsior College'),'unitid']

ipedsHelp('HD', 2009)

#Get the 12-month enrollment survey
enrollment12month = getIPEDSSurvey('EFFY', 2009)
names(enrollment12month); nrow(enrollment12month)
enrollment12month[which(enrollment12month$unitid == unitid),]

ipedsHelp('EFFY', 2009)

#If you are going to be working ofline you can download all
# the surveys and help for a given year.
downloadHelp(2009)
downloadAllSurveys(2009)
