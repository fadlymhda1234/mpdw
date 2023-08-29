library(MVN)
set.seed(11077)

# Membangkitkan 10 sampel dari distribusi uniform (1, 3)
X1 <- runif(10, min = 1, max = 3)
X1

# Membangkitkan 10 sampel dari distribusi eksponensial (Exp(5))
X2 <- rexp(10, rate = 5)
X2

#Membuat data frame
data <- data.frame(X1, X2)

# MenggunakanUji normalitas ganda menggunakan Mardia's Skewness
mardia<-mvn(data, mvnTest = c("mardia"), covariance = TRUE, multivariatePlot = "qq")
mardia

# Uji normalitas ganda menggunakan Henze-Zikler Test
henze<-mvn(data, mvnTest = c("hz"), covariance = TRUE, multivariatePlot = "none")
henze

# Uji Normalitas ganda menggunakan Royston
royston<-mvn(data, mvnTest = c("royston"), covariance = TRUE, multivariatePlot = "persp")
royston

royston<-mvn(data, mvnTest = c("royston"), covariance = TRUE, multivariatePlot = "contour")
royston
View(data)

saveWorkbook(wb,file = "hasil.xlsx",overwrite = T)
