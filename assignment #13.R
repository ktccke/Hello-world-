auar = auto.arima(d)

auto.arima(nile2$flow)
fit_arma =fitted(auto.arima(nile2$flow))
red_arima =resid(auto.arima(d))
plot(red_arima);abline(h= 0)
qqnorm(d)

d
ar2 = 0
ar2
for (i in 3:68){
ar2[i] = -0.4865 * d[i-2] -0.3610 *d[i-1]
  
}



ar2 = ar2[-1]
ar2
d
str(d)   ######manually
#############################

car = arima(d, order = c(2,0,0))
red_car = resid(car)
plot(resid(car))
abline(h=0)
red_arima #little bit different

qqnorm(red_car); qqline(red_car)

car
                              fitted(auar) ####### it is fucking important
                              ##############d- red_car  = fitted(car)

                          
                              
require(tseries); require(astsa)
pred = predict(auar, n.ahead = 10)
ts.plot(d, pred$pred)                              
future = forecast(auar, h = 10)
plot(future)
predict(auar, (d=c(68,2,1)))
predict(auar, n.ahead = 5)






        