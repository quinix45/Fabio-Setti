library(ggplot2)

theme_set(theme_classic(
  base_size = 16,
  accent = "#7a0b80",
  base_family = 'serif'
))


ggplot() +
  stat_function(
    fun = dnorm,
    args = c(mean = 3.3, sd = .3),
    aes(color = "Intercept")
  ) +
  stat_function(
    fun = dnorm,
    args = c(mean = .5, sd = .2),
    aes(color = "Slope")
  ) +
  stat_function(fun = dgamma, args = c(11, 31), aes(color = "Sigma")) +
  scale_x_continuous(limits = c(-1, 4.2), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 4), expand = c(0, 0)) +
  ylab("Density") +
  xlab("Prior Value") +
  labs(colour = "Parameter")
