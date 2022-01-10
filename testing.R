print("This file was created within RStudio")

print("And now it lives on GitHub ")

print("testing")

x <- list(foo = 1:4, bar = 0.6)
x

x <- matrix(1:6, 2,3)
x[1,2]

x[1,]

airquality[1:6, ]
good <- complete.cases(airquality)


install.packages("glimpse")
library(glimpse)
glimpse(airquality)

airquality[good,]


x <- c(1, 3, 5)
y <- c(3, 2, 10)
cbind(x, y)

x <- 1:4
y <- 2
x
x + y

x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] == 4

x <- c("a", "b", "c")
x

x[1]
x[[1]]

x <- list(foo = 1:4, bar = 0.6)
x

x[[1]]
x$foo

x <- matrix(1:6, 2, 3)
x[1,1]
x[1,]
x[[1]]
x[6]

x <- 1:3
y <- 10:12
cb <- cbind(x, y)
rb <- rbind(x, y)

cb
rb

cb[4]
rb[4]