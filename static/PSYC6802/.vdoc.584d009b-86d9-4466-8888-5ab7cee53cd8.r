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
#| code-fold: true
#| eval: false
#| echo: true
#| code-line-numbers: false
#| code-summary: "Install Packages Code"
#| classes: code-125


# run for packages that you have not installed yet
# install.packages("tidyverse")
install.packages("psych")
install.packages("carData")
#
#
#
#| eval: true
#| echo: true
#| code-line-numbers: false
#| warning: false
#| classes: code-150

library(psych)
library(carData)
library(tidyverse)
# I am setting a theme for all the plots
theme_set(theme_classic(base_size = 16, accent = "#7a0b80",
                        base_family = 'serif'))
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
#| eval: true
#| echo: true 
#| message: false
#| code-line-numbers: false
#| classes: code-125

dat <- carData::Prestige
#
#
#
library(labelled)
library(FabioFun)

dat_labs <- rio::import("https://fabio-setti.netlify.app/data/prestige.sav")
labels <- as.character(var_label(dat_labs))

labels <- labels[-1]


labels_react <- reactbl_col.desc(names = colnames(dat),
                                 desc =  labels,
                                 style = "cursor: pointer; text-decoration: none;",
                                 info_color = "#7a0b80")

reactable::reactable(dat,
                     style = list(fontFamily = "Work Sans, sans-serif", fontSize = ".9rem"),
                     pagination = FALSE, highlight = TRUE, height = 300, columns = labels_react)
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
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| out-width: "100%"
#| code-line-numbers: false
#| classes: code-125


ggplot(data = dat,
        aes(x = education, y = prestige)) +
          geom_point()
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
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| out-width: "100%"
#| code-line-numbers: false
#| classes: code-125


ggplot(data = dat,
        aes(x = education, y = prestige)) +
          geom_point()
#
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cov(dat$education, dat$prestige)
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
#
#
#| eval: true
#| echo: true 
#| out-width: "100%"
#| code-line-numbers: false
#| classes: code-125


ggplot(data = dat,
        aes(x = women, y = income)) +
          geom_point()
#
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cov(dat$women, dat$income)
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
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

# Range of 3 variables. apply() functions apply the same function to multiple columns/rows of a matrix
apply(dat[,1:4], 2, range)
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

# here I am adding the standardized variable to the dataset
dat$education_std <- scale(dat$education)[,1]
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
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

mean(dat$education_std)
sd(dat$education_std)
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
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"

ggplot(dat, aes(x = education)) +
  geom_density(aes(color = "Raw")) +
  xlim(c(-10, 20)) +
  scale_y_continuous(expand = c(0,0)) +
  scale_color_manual(
    values = c("Raw" = "blue"),
    name = "",
    labels = c( "Raw" = expression(x[i]))) +
  theme(
    axis.title.y = element_blank(),
    axis.text.y  = element_blank(),
    axis.ticks.y = element_blank(),
    axis.line.y  = element_blank())
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"

ggplot(dat, aes(x = education)) +
  geom_density(aes(color = "Raw")) +
  geom_density(aes(x = education - mean(dat$education), color = "Centered")) +
  xlim(c(-10, 20)) +
  scale_y_continuous(expand = c(0,0)) +
  scale_color_manual(
    values = c("Raw" = "blue",
               "Centered" = "red"),
    name = "",
    labels = c(
      "Raw" = expression(x[i]),
      "Centered" = expression(x[i] - bar(x)))) +
  theme(
    axis.title.y = element_blank(),
    axis.text.y  = element_blank(),
    axis.ticks.y = element_blank(),
    axis.line.y  = element_blank())

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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"

ggplot(dat, aes(x = education)) +
  geom_density(aes(color = "Raw")) +
  geom_density(aes(x = education - mean(dat$education), color = "Centered")) +
  geom_density(aes(x = (education - mean(dat$education)) / sd(dat$education),
                   color = "Standardized")) +
  xlim(c(-10, 20)) +
  scale_y_continuous(expand = c(0,0)) +
  scale_color_manual(
    values = c("Raw" = "blue",
               "Centered" = "red",
               "Standardized" = "purple"),
    name = "",
    labels = c(
      "Raw" = expression(x[i]),
      "Centered" = expression(x[i] - bar(x)),
      "Standardized" = expression((x[i] - bar(x)) / S[x])
    )
  ) +
  theme(
    axis.title.y = element_blank(),
    axis.text.y  = element_blank(),
    axis.ticks.y = element_blank(),
    axis.line.y  = element_blank())
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

dat$education_std <- scale(dat$education)[,1]
dat$prestige_std <- scale(dat$prestige)[,1]
dat$women_std <- scale(dat$women)[,1]
dat$income_std <- scale(dat$income)[,1]
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cov(dat$education, dat$prestige)
cov(dat$women, dat$income)
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cov(dat$education_std, dat$prestige_std)
cov(dat$women_std, dat$income_std)
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
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

# We use the original variables because they are standardized within the correlation formula. The steps from before were only intended to demonstrate the equivalence between correaltion and covariance
cor(dat$education, dat$prestige)
cor(dat$women, dat$income)
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
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

psych::corTest(dat$education, dat$prestige)
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
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cor(dat[,1:4])
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
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cor_mat <- corTest(dat[,1:4])
cor_mat$r
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
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

names(cor_mat)
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

round(cor_mat$ci, digits = 3)
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

round(cor_mat$t, digits = 2)
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
#
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

# wc and bc stand for blue collar and white collar
dat_filt <- dat %>% 
             filter(type %in% c("wc", "bc"))

table(dat_filt$type)
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

psych::biserial(dat_filt$income, 
                dat_filt$type)
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
#
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
ggplot(data = dat,
        aes(x = education, y = prestige)) +
          geom_point() +
           geom_smooth(method = "lm")
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
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

reg <- lm(prestige ~ education, dat = dat)
summary(reg)
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
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

reg <- lm(prestige ~ education, dat = dat)
summary(reg)
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
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"


ggplot(data = dat,
        aes(x = education, y = prestige)) +
          geom_point() +
            geom_abline(intercept =  as.numeric(reg$coefficients[1]), 
                        slope =  as.numeric(reg$coefficients[2], 
                        fill = "#7a0b80"))+
             geom_vline(xintercept = 0, lty = 2) +
             geom_segment(y = as.numeric(reg$coefficients[1]), x = 0,
                          yend = as.numeric(reg$coefficients[1]), xend = -10, lty = 3) +
            annotate("text", x = -3, y = 0, label = "the dot is the \n intercept") +
            geom_point(aes(x = 0, y = as.numeric(reg$coefficients[1]), col = "red", size = 3), show.legend = FALSE) +
             xlim(c(-5, 20)) +
             ylim(c(-30, 90))

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
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "plot Code"

ggplot(data = dat,
        aes(x = education, y = prestige)) +
          geom_point() +
          geom_smooth(method = "lm", se = FALSE)
#
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125


cor(dat$prestige, dat$education)
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125


lm(prestige ~ education, data = dat)$coef[2]
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "plot Code"

ggplot(data = dat,
        aes(x = women, y = education)) +
          geom_point() +
          geom_smooth(method = "lm", se = FALSE)
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cor(dat$women, dat$education)
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

lm(education ~ women, data = dat)$coef[2]
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "plot Code"

ggplot(data = dat,
        aes(x = women, y = income)) +
          geom_point() +
          geom_smooth(method = "lm", se = FALSE)
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cor(dat$women, dat$income)
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

lm(income ~ women, dat)$coef[2]
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
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

reg <- lm(prestige ~ education, dat = dat)
summary(reg)
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

reg_std <- lm(prestige_std ~ education_std, dat = dat)
summary(reg_std)
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
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "plot Code"

ggplot(data = dat,
        aes(x = education, y = prestige)) +
          geom_point() +
          geom_smooth(method = "lm", se = FALSE)
#
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "plot Code"

ggplot(data = dat,
        aes(x = education_std, y = prestige_std)) +
          geom_point() +
          geom_smooth(method = "lm", se = FALSE)
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
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

round(reg_std$coef[1], 3)
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
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| out-width: "110%"
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"

ggplot(data = dat,
        aes(x = education_std, y = prestige_std)) +
          geom_point() +
          geom_hline(yintercept = 0, lty = 3) +
          geom_vline(xintercept = 0, lty = 3) +
          geom_smooth(method = "lm", se = FALSE)
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
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-115

round(summary(reg)$coefficients, 2)
#
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-115

round(summary(reg_std)$coefficients, 2)
#
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

round(cor_mat$r[4,1], 2)

# t-statistic for correlation
round(cor_mat$t[4,1], 2)
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
#
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"

# Generate idealized data

set.seed(7757)

# generate X values
education <- rep(seq(min(dat$education), max(dat$education), by =.1), 150)

# the code below generates data according to the regression model

intercept <- coef(reg)[1]
slope <- coef(reg)[2]
residual_var <- sigma(reg)

ideal_data <- rnorm(length(education), mean = intercept + education*slope, sd = sigma(reg))

# plot the idealized data

ggplot(mapping =  aes(x = education, y = ideal_data)) +  
  geom_point(alpha = .2)+
  ggtitle("The Data Regression Expects") +
  ylab("prestige") +
  xlab("education") +
      geom_smooth(method = "lm", se = FALSE)
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
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

reg <- lm(prestige ~ education, data = dat)
dat$resid_prestige <- reg$residuals
#
#
#
#
#
#
#
#
#
#| eval: false
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, aes(x = education, y = resid_prestige)) +
        geom_point() +
        geom_hline(yintercept = 0) +
        geom_smooth(method = "loess", se = FALSE)
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
#| eval: true
#| echo: false
#| code-line-numbers: false
#| classes: code-125


ggplot(dat, aes(x = education, y = resid_prestige)) +
        geom_point() +
        geom_hline(yintercept = 0) +
        geom_smooth(method = "loess", se = FALSE)


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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125


reg2 <- lm(income ~ women, data = dat)
dat$resid_income <- reg2$residuals
#
#
#
#
#| eval: false
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, aes(x = women, y = resid_income)) +
        geom_point() +
        geom_hline(yintercept = 0) +
        geom_smooth(method = "loess", se = FALSE)

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
#
#
#| eval: true
#| echo: false 
#| code-line-numbers: false
#| classes: code-125


ggplot(dat, aes(x = women, y = resid_income)) +
        geom_point() +
        geom_hline(yintercept = 0) +
        geom_smooth(method = "loess", se = FALSE)

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
#
#| eval: false
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, 
       aes(sample = resid_prestige)) + 
       stat_qq() + 
       stat_qq_line()

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
#| eval: true
#| echo: false
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, 
       aes(sample = resid_prestige)) + 
       stat_qq() + 
       stat_qq_line()

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
#
#
#| eval: false
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, 
       aes(sample = resid_income)) + 
       stat_qq() + 
       stat_qq_line()

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
#| eval: true
#| echo: false
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, 
       aes(sample = resid_income)) + 
       stat_qq() + 
       stat_qq_line()

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
#
#
#
#
#
#
#
#
#
#| eval: false
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, 
       aes(x = resid_prestige)) + 
        geom_density()

#
#
#
#
#
#
#
#
#| eval: true
#| echo: false
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, 
       aes(x = resid_prestige)) + 
        geom_density()

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
#
#
#| eval: false
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, 
       aes(x = resid_income)) + 
        geom_density()

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
#| eval: true
#| echo: false
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, 
       aes(x = resid_income)) + 
        geom_density()

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
#| eval: true
#| echo: false
#| code-line-numbers: false
#| classes: code-125

summary(reg2)
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
#| eval: true
#| echo: false 
#| code-line-numbers: false
#| classes: code-125

ggplot(dat, aes(x = women, y = resid_income)) +
        geom_point() +
        geom_hline(yintercept = 0) +
        geom_smooth(method = "loess", se = FALSE) +
        ggforce::geom_ellipse(aes(x0 = 7, y0 = 13500, a = 10, b = 5000, angle = 0), color="red")
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
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

summary(reg)$r.squared
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

summary(reg2)$r.squared
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cor(dat$prestige, dat$education)^2
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

cor(dat$income, dat$women)^2
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

mean(dat$prestige)
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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"

ggplot(dat,  
       aes(x = prestige -  mean(prestige), y = 0)) +
       geom_point(shape = 1, 
                  size=6.5) +
  annotate("text", y = 0.008, x = 0, label = "These would be the residuals of Prestige, \n if our best guess is the mean", size = 7.5) +
  annotate("text", y = - 0.008, x = 0, label = "The variance of these residuals is the exact same as \nthe varaince of the original prestige variable", size = 7.5) +
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.line.y =  element_blank()) +
          ylim(c(-.01, .01)) +
          xlab("Residuals of Prestige")

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
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"

ggplot(dat,  
       aes(x = prestige -  mean(prestige), y = 0)) +
       geom_point(shape = 1, 
                  size=6.5) +
  annotate("text", y = 0.015, x = 0, label = paste("The Original residuals had a \n varaince of", round(var(dat$prestige), 2)), size = 7.5)+
  geom_point(aes(x = dat$resid_prestige, y = - .03), shape = 1, 
                  size=6.5, col = "blue") + 
    annotate("text", y = -0.015, x = 0, label = paste("After finding out about education, \n the varaince of the residuals becomes", round(sum(dat$resid_prestige^2)/100, 2)), size = 7.5, col = "blue")+
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.line.y =  element_blank()) +
          ylim(c(-.04, .02)) +
          xlab("Residuals of Prestige")

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
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

reg_one_var <- lm(prestige ~ 1, data = dat)
coef(reg_one_var)
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125

mean(dat$prestige)
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"

# fit a linear model
fit <- lm(prestige ~ 1, data = dat)

# add fitted values to the data
dat$resid_line <- predict(fit)

ggplot(data = dat, aes(x = education, y = prestige)) +
  geom_point() +
  geom_hline(yintercept =  mean(dat$prestige)) +
  geom_segment(aes(xend = education, 
                   yend = resid_line),
               linetype = "dotted", color = "red")

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
#
#
#
#
#
#
#
#
#| eval: true
#| echo: true 
#| code-line-numbers: false
#| classes: code-125
#| code-fold: true
#| code-summary: "Plot Code"


library(ggplot2)

# fit a linear model
fit <- lm(prestige ~ education, data = dat)

# add fitted values to the data
dat$resid_line <- predict(fit)

ggplot(data = dat, aes(x = education, y = prestige)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  geom_segment(aes(xend = education, 
                   yend = resid_line),
               linetype = "dotted", color = "red")


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
