setwd("C:/Users/Oracle/Documents/R/cousera/datasciencecoursera/week2")


complete <- function(directory, id = 1:332){
        ## 'director' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the from:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        results <- data.frame(id=numeric(0), nobs=numeric(0))
        for(monitor in id){
                path <- paste(getwd(), "/", directory, "/", sprintf("%03d", monitor), ".csv", sep = "")
                monitor_data <- read.csv(path)
                interested_data <- monitor_data[(!is.na(monitor_data$sulfate)), ]
                interested_data <- interested_data[(!is.na(interested_data$nitrate)), ]
                nobs <- nrow(interested_data)
                results <- rbind(results, data.frame(id=monitor, nobs=nobs))
        }
        results
}


source("complete.R")
complete("specdata", 1)

complete("specdata", c(2, 4, 8, 10, 12))

complete("specdata", 30:25)

complete("specdata", 3)



cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

cc <- complete("specdata", 54)
print(cc$nobs)


set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])
