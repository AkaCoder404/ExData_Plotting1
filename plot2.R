plot2 <- function(data_sub) {
    plot(data_sub$DateTime,
        data_sub$Global_active_power,
        type = "l",
        xlab = "",
        ylab = "Global Active Power (kilowatts)",
        # Remove the x-axis labels
        xaxt = "n",
    )

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
