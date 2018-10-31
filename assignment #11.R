a = rnorm(102, mean = 0 , sd =1)
b = rnorm(102, mean = 0 , sd =1)
c = rnorm(102, mean = 0 , sd =1)

ima = 0

for (i in 2:101){
  ima[i]  = ima[i-1] + c[i]- 0.3*c[i-1]
  
}

ima3 = ima3[2:101]
ima
ima2
ima3 # make the ima model

plot(ima , type = 'l')+
  lines(ima2, col = '2')+
  lines(ima3, col = '4')

acf(ima, lag.max= NULL, type = c("correlation"))
acf(ima2, lag.max= NULL, type = c("correlation"))
acf(ima3, lag.max= NULL, type = c("correlation"))

###########################################################

# ari model  i just watched youtube about the arima model 

###########################################################

ari = 0.5
ari2 = 0.1
ari3 = c[1]

# to make a model non stationary

for (i in 2:100){
  ari[i] = 1.3*ari[i-1] +a[i]
  
}
# 
plot(ari , type ='l')+
  lines(ari2 , col = '2')+
  lines(ari3 , col = '4')

acf(ari, lag.max= NULL, type = c("correlation"))
acf(ari2, lag.max= NULL, type = c("correlation"))
acf(ari3, lag.max= NULL, type = c("correlation"))

















