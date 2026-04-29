library(ggplot2)

theme_set(theme_classic(
  base_size = 16,
  accent = "#7a0b80",
  base_family = 'serif'
))


quantile_loss_plot <- function(truth, prob = 0.5, range = 5, n = 500) {
  # grid of forecast errors
  error <- seq(-range, range, length.out = n)
  forecast <- truth + error

  # loss function (your original)
  loss <- prob *
    pmax(truth - forecast, 0) +
    (1 - prob) * pmax(forecast - truth, 0)

  df <- data.frame(error = error, loss = loss)

  ggplot(df, aes(x = error, y = loss)) +
    geom_line(linewidth = 1.2) +
    geom_vline(xintercept = 0, linetype = "dashed") +
    labs(,
      x = "Forecast error (forecast - truth)",
      y = "S-score"
    )
}


S_score_05 <- quantile_loss_plot(truth = 0, prob = 0.05)
S_score_25 <- quantile_loss_plot(truth = 0, prob = 0.25)
S_score_50 <- quantile_loss_plot(truth = 0, prob = 0.50)
S_score_75 <- quantile_loss_plot(truth = 0, prob = 0.75)
S_score_95 <- quantile_loss_plot(truth = 0, prob = 0.95)

# save plots

ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/S-scores/S_score_05.png",
  S_score_05,
  width = 6,
  height = 4
)


ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/S-scores/S_score_25.png",
  S_score_25,
  width = 6,
  height = 4
)


ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/S-scores/S_score_50.png",
  S_score_50,
  width = 6,
  height = 4
)


ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/S-scores/S_score_75.png",
  S_score_75,
  width = 6,
  height = 4
)


ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/S-scores/S_score_95.png",
  S_score_95,
  width = 6,
  height = 4
)
