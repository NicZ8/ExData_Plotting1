## Plotting Assignment 1 for Exploratory Data Analysis
##
## Examine how household energy usage varies over a 2-day period in February, 2007. 
##
## Plot 2


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


## Convert the Date and Time variables to POSIXlt class in new column

energy$datetime <- strptime(paste(energy$Date, energy$Time), 
                            format = "%d/%m/%Y %H:%M:%S")


## Construct the plot and save it to a PNG file

png("plot2.png", width = 480, height = 480, units = "px")

plot(energy$datetime, energy$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
