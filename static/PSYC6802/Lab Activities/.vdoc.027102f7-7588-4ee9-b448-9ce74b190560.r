#
#
#
#
#
#
#
#
#
#
#
#
dat <- rio::import("https://fabio-setti.netlify.app/data/NYC_SAT_data.csv")
#
#
#
#
#
#
#
#| echo: false
#| eval: true
#| results: hide

str(dat$Percent_Black)

# the `Percent_Black` is a character and it also includes a % sign, so transforming it directly into a numeric does not work
#
#
#
#
#
#
#
#
sub(pattern = "hi", 
    x = c("hi there", "you can change the pattern to hi"), 
    replacement = "anything you want")
#
#
#
#
#| echo: false
#| eval: true
#| results: hide

dat$Percent_Black <- as.numeric(sub(pattern = "%", x = dat$Percent_Black, replacement = ""))
#
#
#
#
#
#
#| echo: false
#| eval: true
#| results: hide

dat$Borough <- factor(dat$Borough)

reg <- lm(Percent_Black ~ Borough, data = dat)
anova(reg)

# there are some mean differences in percentage of black students in schools across the 5 Boroughs
#
#
#
#
#
#
#| echo: false
#| eval: true
#| results: hide


effectsize::omega_squared(reg)

# Borough explains around 26% of the variance in percentage of black students in each school 
#
#
#
#
#
#
library(tidyverse)

ggplot(dat, aes(y = Percent_Black, 
                x = Borough, 
                fill = Borough)) +
  geom_violin() +
  # this will create a boxplot inside the violins
  geom_boxplot(width = 0.1)
#
#
#
#
