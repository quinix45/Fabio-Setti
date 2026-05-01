library(tidyverse)
library(googlesheets4)

gs4_auth(scopes = "https://www.googleapis.com/auth/spreadsheets.readonly")

data <- read_sheet(
    "https://docs.google.com/spreadsheets/d/1PpYyAlEPONu2bYY0UC6RIfI8vvQEdCkUrPS2ofpdn58/edit?resourcekey=&gid=1312763672#gid=1312763672"
) |>
    as.data.frame()


# turn all columns into numerics
data <- apply(data, 2, as.numeric) |> as.data.frame()


QEF_hist <- function(data, smooth = 1.5, title = "", xlim = NULL) {
    df_long <- data |>
        pivot_longer(
            cols = everything(),
            names_to = "quantile",
            values_to = "Forecasts"
        )

    means <- df_long |>
        group_by(quantile) |>
        summarise(mean_value = mean(Forecasts), .groups = "drop")

    library(ggplot2)

    if (is.null(xlim)) {
        xlim <- c()
        xlim[1] <- min(df_long$Forecasts, na.rm = TRUE) -
            max(df_long$Forecasts, na.rm = TRUE) * .1
        xlim[2] <- max(df_long$Forecasts, na.rm = TRUE) +
            max(df_long$Forecasts, na.rm = TRUE) * .1
    }

    plot <- ggplot(df_long, aes(x = Forecasts, fill = quantile)) +
        geom_density(alpha = 0.5, adjust = 1.5) +
        geom_vline(
            data = means,
            aes(xintercept = mean_value, color = quantile),
            linetype = "dashed",
            linewidth = 1,
            show.legend = FALSE
        ) +
        ggtitle(title) +
        xlim(xlim) +
        scale_fill_discrete(
            name = "Quantile",
            labels = c("5th", "25th", "50th", "75th", "95th")
        ) +
        theme_classic() +
        scale_y_continuous(expand = c(0, 0)) +
        theme(
            axis.line.y = element_blank(),
            axis.ticks.y = element_blank(),
            axis.text.y = element_blank(),
            axis.title.y = element_blank()
        )

    return(plot)
}


## gas prices

QEF_hist(data = data[, 2:6], xlim = NULL, title = "Gas Prices")

## Dow Jones

QEF_hist(data = data[, 7:11], xlim = NULL, title = "Dow Jones")

# AI papers

QEF_hist(data = data[, 12:16], xlim = NULL, title = "AI Papers")

## Housing units

QEF_hist(
    data = data[, 17:21],
    xlim = NULL,
    title = "Privately-Owned Housing Units"
)
