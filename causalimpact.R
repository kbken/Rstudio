# Install package
install.packages("CausalImpact")
library(CausalImpact)

# Generate dummy data-set
set.seed(1)
x1 <- 100 + arima.sim(model = list (ar = 0.999), n = 100)
y <- 1.2 * x1 + rnorm(100)
y[71:100] <- y[71:100] + 10
data <- cbind(y, x1)

dim(data)
head(data)
str(data)

# Visualization
matplot(data, type = "l")
str(matplot)

# Subset
pre.period <- c(1, 70)
post.period <- c(71, 100)

# Causal Impact
impact <- CausalImpact(data, pre.period, post.period)
plot(impact)
summary(impact, "report")


# Working with dates and times
time.points <- seq.Date(as.Date("2014-01-01"), by = 1, length.out = 100)
data <- zoo(cbind(y, x1), time.points)
head(data)
pre.period <- as.Date(c("2014-01-01", "2014-03-11"))
post.period <- as.Date(c("2014-03-12", "2014-04-10"))

impact <- CausalImpact(data, pre.period, post.period, list(nseasons = 7, season.duration = 1))
plot(impact)
summary(impact)

CausalImpact()