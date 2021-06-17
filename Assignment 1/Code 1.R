library(datasets)

DATA <- anscombe

#PART A
LinearModel1 <- lm(DATA$y1 ~ DATA$x1)
LinearModel2 <- lm(DATA$y2 ~ DATA$x2)
LinearModel3 <- lm(DATA$y3 ~ DATA$x3)
LinearModel4 <- lm(DATA$y4 ~ DATA$x4)

#PART B
summary1 <- summary(LinearModel1)$adj.r.squared
summary2 <- summary(LinearModel2)$adj.r.squared
summary3 <- summary(LinearModel3)$adj.r.squared
summary4 <- summary(LinearModel4)$adj.r.squared

summary1
summary2
summary3
summary4

#PART C
plot(DATA$x1, DATA$y1, pch = 19, col = "blue", main = "SCATTER PLOT AND REGRESSION LINE (X1 vs Y1)", ylab = "Y1", xlab = "X1")
abline(LinearModel1, col="red", lwd = 2)

plot(DATA$x2, DATA$y2, pch = 19, col = "blue", main = "SCATTER PLOT AND REGRESSION LINE (X2 vs Y2)", ylab = "Y2", xlab = "X2")
abline(LinearModel2, col="red", lwd = 2)

plot(DATA$x3, DATA$y3, pch = 19, col = "blue", main = "SCATTER PLOT AND REGRESSION LINE (X3 vs Y3)", ylab = "Y3", xlab = "X3")
abline(LinearModel3, col="red", lwd = 2)

plot(DATA$x4, DATA$y4, pch = 19, col = "blue", main = "SCATTER PLOT AND REGRESSION LINE (X4 vs Y4)", ylab = "Y4", xlab = "X4")
abline(LinearModel4, col="red", lwd = 2)

help(anscombe)