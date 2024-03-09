plot3 <- function(data_sub) {
    # Plot a line graph of Energy Sub Metering over the 2-day period
    plot(data_sub$DateTime, data_sub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering", col = "black", xaxt = "n", ylim = c(0, 40))
    lines(data_sub$DateTime, data_sub$Sub_metering_2, col = "red")
    lines(data_sub$DateTime, data_sub$Sub_metering_3, col = "blue")

    # Add a legend
    legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

    # Change the x-axis to show the day of the week in the range of the Thursday to Saturday without the date
    axis.POSIXct(1,
        at = seq(
            from = as.POSIXct("2007-02-01 00:00:00"),
            to = as.POSIXct("2007-02-03 00:00:00"),
            by = "1 day"
        ),
        format = "%a",
        las = 1
    )
}
