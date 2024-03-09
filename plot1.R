# Plot
plot1 <- function(data_sub) {
    hist(
        data_sub$Global_active_power,
        col = "red",
        main = "Global Active Power",
        xlab = "Global Active Power (kilowatts)",
        ylab = "Frequency"
    )
}
