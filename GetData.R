getdata <-function() {

  library(readr)
  
  # set working directory
  setwd("~/R/ExplData/Assignment1")
  
  ## Assume the data file has already been downloaded and unzipped into the above working directory
  
  ## Problems reading the date and times with the default formats, so read them as character strings and convert
  
  pow <- read_delim("household_power_consumption.txt", delim=";", col_names=TRUE, na=c("","?"), col_types="ccddddddd")
  
  pow$DateTime <- strptime(paste(pow$Date, ' ',pow$Time), '%d/%m/%Y %H:%M:%S')
  
  
  ## Look at the data to make sure it looks good
  #str(pow)
  #head(pow)
  
  
  ## subset the data to the time of interest for the assignment.  This will make subsequent plotting quicker.
  begDate <- strptime('1/2/2007 00:00:00', '%d/%m/%Y %H:%M:%S')
  endDate <- strptime('2/2/2007 23:59:59', '%d/%m/%Y %H:%M:%S')
  
  powsub <- pow[(pow$DateTime>=begDate & pow$DateTime<=endDate),]
  return(powsub)
}




