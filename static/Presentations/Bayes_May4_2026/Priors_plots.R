library(ggplot2)

theme_set(theme_classic(
  base_size = 16,
  accent = "#7a0b80",
  base_family = 'serif'
))


# B ----------------------------------------------------------------------

# b

set.seed(6557654)
nSamples <- 100000
dat <- data.frame(y = rep(NA, nSamples))
dat$sample_b <- rnorm(n = nSamples, 0, 2)

p_b <- ggplot(dat, aes(x = sample_b)) +
  geom_density(adjust = 2, color = "#7a0b80") +
  scale_x_continuous(limits = c(-7, 7), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 0.2), expand = c(0, 0)) +
  ylab("Density") +
  xlab(expression(
    italic(N) ~ "(" * mu ~ ~"=" ~ 0 * "," ~ sigma ~ ~"=" ~ 2 * ")"
  )) +
  labs(
    title = expression(italic(b)[i])
  ) +
  theme(plot.title = element_text(hjust = 0.5))


p_b

ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/Priors/b_prior.png",
  p_b,
  width = 6,
  height = 4
)


# D ----------------------------------------------------------------------

# log d

dat$sample_d <- rnorm(n = nSamples, 0, 3)

p_dLog <- ggplot(dat, aes(x = sample_d)) +
  geom_density(adjust = 2, color = "#7a0b80") +
  scale_x_continuous(limits = c(-9, 9), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 0.15), expand = c(0, 0)) +
  ylab("Density") +
  xlab(expression(
    italic(N) ~ "(" * mu ~ ~"=" ~ 0 * "," ~ sigma ~ ~"=" ~ 3 * ")"
  )) +
  labs(
    title = expression("log[" * d[i] * "]")
  ) +
  theme(plot.title = element_text(hjust = 0.5))

p_dLog

ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/Priors/dlog_prior.png",
  p_dLog,
  width = 6,
  height = 4
)


p_d <- ggplot(dat, aes(x = exp(sample_d))) +
  geom_density(adjust = 3, color = "#7a0b80") +
  scale_x_continuous(limits = c(0, 10), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 0.6), expand = c(0, 0)) +
  ylab("Density") +
  xlab(expression(
    "Exp[" *
      italic(N) ~ "(" * mu ~ ~"=" ~ 0 * "," ~ sigma ~ ~"=" ~ 3 * ")" * "]"
  )) +
  labs(
    title = expression(d[i])
  ) +
  theme(plot.title = element_text(hjust = 0.5))

p_d

ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/Priors/d_prior.png",
  p_d,
  width = 6,
  height = 4
)


# A ----------------------------------------------------------------------

dat$sample_a <- rnorm(n = nSamples, 0, 0.5)

p_aLog <- ggplot(dat, aes(x = sample_a)) +
  geom_density(adjust = 3, color = "#7a0b80") +
  scale_x_continuous(limits = c(-2, 2), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 0.9), expand = c(0, 0)) +
  ylab("Density") +
  xlab(expression(
    italic(N) ~ "(" * mu ~ ~"=" ~ 0 * "," ~ sigma ~ ~"=" ~ 0.5 * ")"
  )) +
  labs(
    title = expression("log[" * a[i] * "]")
  ) +
  theme(plot.title = element_text(hjust = 0.5))

p_aLog

ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/Priors/alog_prior.png",
  p_aLog,
  width = 6,
  height = 4
)

p_a <- ggplot(dat, aes(x = exp(sample_a))) +
  geom_density(adjust = 3, color = "#7a0b80") +
  scale_x_continuous(limits = c(0, 4), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 1), expand = c(0, 0)) +
  ylab("Density") +
  xlab(expression(
    "Exp[" *
      italic(N) ~ "(" * mu ~ ~"=" ~ 0 * "," ~ sigma ~ ~"=" ~ 0.5 * ")" * "]"
  )) +
  labs(
    title = expression(a[i])
  ) +
  theme(plot.title = element_text(hjust = 0.5))

p_a

ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/Priors/a_prior.png",
  p_a,
  width = 6,
  height = 4
)

# Sigma ------------------------------------------------------------------

# sigma

dat$sample_sigma <- rnorm(n = nSamples, 0, 2)

p_logSigma <- ggplot(dat, aes(x = sample_sigma)) +
  geom_density(adjust = 3, color = "#7a0b80") +
  scale_x_continuous(limits = c(-7, 7), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 0.2), expand = c(0, 0)) +
  ylab("Density") +
  xlab(expression(
    italic(N) ~ "(" * mu ~ ~"=" ~ 0 * "," ~ sigma ~ ~"=" ~ 2 * ")"
  )) +
  labs(
    title = expression("log[" * sigma["  i"] * "]")
  ) +
  theme(plot.title = element_text(hjust = 0.5))

p_logSigma

ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/Priors/logsigma_prior.png",
  p_logSigma,
  width = 6,
  height = 4
)


p_Sigma <- ggplot(dat, aes(x = exp(sample_sigma))) +
  geom_density(adjust = 3, color = "#7a0b80") +
  scale_x_continuous(limits = c(0, 5), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 0.75), expand = c(0, 0)) +
  ylab("Density") +
  xlab(expression(
    "Exp[" *
      italic(N) ~ "(" * mu ~ ~"=" ~ 0 * "," ~ sigma ~ ~"=" ~ 2 * ")" * "]"
  )) +
  labs(
    title = expression(sigma["  i"])
  ) +
  theme(plot.title = element_text(hjust = 0.5))

p_Sigma

ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/Priors/sigma_prior.png",
  p_Sigma,
  width = 6,
  height = 4
)


# DF ---------------------------------------------------------------------

## df

dat$sample_df <- rgamma(n = nSamples, 13, 3)

p_df <- ggplot(dat, aes(x = sample_df)) +
  geom_density(adjust = 3, color = "#7a0b80") +
  scale_x_continuous(limits = c(0, 10), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 0.35), expand = c(0, 0)) +
  ylab("Density") +
  xlab(expression(
    "Gamma" ~ "(" * alpha ~ ~"=" ~ 13 * "," ~ beta ~ ~"=" ~ 3 * ")"
  )) +
  labs(
    title = expression(italic(df)[i])
  ) +
  theme(plot.title = element_text(hjust = 0.5))

p_df

ggsave(
  filename = "static/Presentations/Bayes_May4_2026/Additional files/Images/Priors/df_prior.png",
  p_df,
  width = 6,
  height = 4
)
