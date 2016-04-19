## Plotting Assignment 1 for Exploratory Data Analysis
##
## Examine how household energy usage varies over a 2-day period in February, 2007. 
##
## Plot 1


## Load the data set
##
## Note : Only data from the dates 2007-02-01 and 2007-02-02 are required.
##        These are in rows 66637 to 69516 of the source data set.

cn <- colnames(read.table("household_power_consumption.txt", header = TRUE,
                       sep = ";", nrow = 1))

energy <- read.table("household_power_consumption.txt", header = TRUE, 
                     sep = ";", na.strings = "?", col.names = cn, 
                     nrows = 2880, skip = 66636,
                     stringsAsFactors = FALSE)


## Construct the plot and save it to a PNG file

png("plot1.png", width = 480, height = 480, units = "px")

hist(energy$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()