source("plot2.R")
source("plot3.R")
plot4 <- function(data_sub) {
    par(mfrow = c(2, 2))
    plot2(data_sub)
    plot(data_sub$DateTime, data_sub$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", xaxt = "n")
    axis.POSIXct(1, at = seq(from = as.POSIXct("2007-02-01 00:00:00"), to = as.POSIXct("2007-02-03 00:00:00"), by = "1 day"), format = "%a", las = 1)
    plot3(data_sub)
    plot(data_sub$DateTime, data_sub$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Reactive Power", xaxt = "n")
    axis.POSIXct(1, at = seq(from = as.POSIXct("2007-02-01 00:00:00"), to = as.POSIXct("2007-02-03 00:00:00"), by = "1 day"), format = "%a", las = 1)
}
