setwd("C:/Users/changju/Desktop/일본으로 가는/시계열/마지막 프로젝트")

nile = read.csv("nile.csv", head = T)
colnames(nile) = c("year", "flow")
plot(nile, main ="nile flow", type = 'l' )
dim(nile)

acf(nile$flow, lag.max= NULL, type = c("correlation"))

mean(nile$flow)
var(nile$flow)
##########################remove the wired one
nile=nile[-42,]

cor(nile[1,2],nile[1,2])

pacf(nile$flow, xaxp = NULL)


##########################what i stole from my friend
#install.packages("forecast")  # it cannot be implented when I alter the time on the laptop
library(forecast)
auto.arima(nile$flow)
plot(nile2$flow)

dim(nile2)
nile2 = nile[30:98,]

nile3 = nile2
nile3$flow = nile2$flow - mean(nile2$flow)
 plot(nile3)
 auto.arima(nile3$flow)
 


####################################assignmet 13
lm1 = lm(nile$flow~ 1, data = nile)
str(nile)
AIC(lm1)
BIC(lm1)
nile2
plot(nile2, type = 'l')
d = diff(nile2$flow)
plot(d, type = 'l')  # hak's advice
auto.arima(d)

d = d[-68]
d





observation =  seq(1,68,1)
d = as.numeric(d)
observation
d2=d
d3 = cbind(observation, d2)
str(d3)
d3 = as.data.frame(d3)
lm2 = lm(d2~observation, data = d3)
library(forecast)
auto.arima(d)
AIC(lm2)
BIC(lm2)
plot(naisyo)
naisyo = d[-7]
naisyo = naisyo[-13]
auto.arima(naisyo)

write.csv(d, file = "assignment13.csv")
