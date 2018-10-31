library(truncnorm)
library(ggplot2)

a = rtruncnorm(102,mean = 0 )
b = rtruncnorm(102,mean = 0 )
c = rtruncnorm(102,mean = 0 ) 

A = data.frame(a,b,c)
str(A)
plot(A)
observations = c(1:102)
ggplot(aes(x = observations), data = A) + 
  geom_line(aes(y = a, color = 'red')) +
  geom_line(aes(y = b, color = 'pink')) +
  geom_line(aes(y = c, color = 'black'))
  
##### model no.1 #####
ar1 = 0 
ar1[1] = a[1]; ar2 = b[1]; ar3 = c[1]

 for (i in 2:101){
  ar1[i] = 0.3*ar1[i-1] + a[i]
  
}
View(cbind(a,ar1))

for (i in 2:101){
  ar2[i] = 0.3*ar2[i-1] + b[i]
  
}
for (i in 2:101){
  ar3[i] = 0.3*ar3[i-1] + c[i]
  
}

plot(ar1, type = 'l', ylim = c(-4,4))+
  lines(ar2,  col ='4')+
  lines(ar3, col = '2')
   
ar2_1 = 0 ; ar2_2 = 0; ar2_3 = 0
ar2_1[1] = a[1]; ar2_2[1] = b[1]; ar2_3[1] = c[1]
ar2_1[2] = a[2]; ar2_2[2] = b[2]; ar2_3[2] = c[2]

for (i in 3:102){
  
  ar2_1[i] = 0.3*ar2_1[i-1]+ 0.1*ar2_1[i-2] + a[i]
  
}
for (i in 3:102){
  
  ar2_2[i] = 0.3*ar2_2[i-1]+ 0.1*ar2_2[i-2] + b[i]
  
}
for (i in 3:102){
  
  ar2_3[i] = 0.3*ar2_3[i-1]+ 0.1*ar2_3[i-2] + c[i]
  
}

plot(ar2_1 , type = 'l', ylim = c(-4,4))+
  lines(ar2_2,  col ='4')+
  lines(ar2_3, col = '2')

                      ################  MA MODEL  ##################
ma1_1 = 0; ma1_2 = 0;ma1_3 = 0
for (i in 2:101){
  
  ma1_1[i] = a[i] +0.3*a[i-1]
  
}
for (i in 2:101){
  
  ma1_2[i] = b[i] +0.3*b[i-1]
  
}
for (i in 2:101){
  
  ma1_3[i] = c[i] +0.3*c[i-1]
  
}

plot(ma1_1 , type = 'l', ylim = c(-4,4)) +
  lines(ma1_2, col = '2') +
  lines(ma1_3, col = '3')

###########################################MA2 MODEL#################
ma2_1 = 0; ma2_2 = 0;ma2_3 = 0


for (i in 3:102){
  
  ma2_1[i] = a[i] +0.3*a[i-1]+ 0.1*a[i-2]
  
}
for (i in 3:102){
  
  ma2_2[i] = b[i] +0.3*b[i-1]+ 0.1*b[i-2]
  
}
for (i in 3:102){

  ma2_3[i] = c[i] +0.3*c[i-1]+ + 0.1*c[i-2]
  
}
plot(ma2_1 , type = 'l', ylim = c(-4,4))+
  lines(ma2_2,  col ='4')+
  lines(ma2_3, col = '2')

##########################arma
arma1[1] = 0; arma2[1] = 0; arma3[1] = 0

for (i in 2:101){
  
arma1[i] = a[i] + 0.3*arma1[i-1] + 0.3*a[i-1]   
  
}
for (i in 2:101){
  
  arma2[i] = b[i] + 0.3*arma2[i-1] + 0.3*b[i-1]   
  
}
for (i in 2:101){
  
  arma3[i] = c[i] + 0.3*arma3[i-1] + 0.3*c[i-1]   
  
}
plot(arma1, type = 'l')
plot(arma3, type = 'l')

arma2





########################### auto correltion ##############

ma2_3 = ma2_3[3:102]
acf(ar1, lag.max= NULL, type = c("correlation"))
acf(ar2, lag.max= NULL, type = c("correlation"))
acf(arma3, lag.max= NULL, type = c("correlation"))



ar1;ar2;ar3
acf(ar1,ar2,ar3)
?acf




##################

ar1

dif_ar1 = diff(ar1)
acf(dif_ar1)
ma1_1

dif_ma1 = diff(ma1_1)
acf(dif_ma1)


B = matrix(c(-0.5,0.5,0,1,-1,0),nrow = 2)
A = matrix(c(6,1,-1,1,4,0,-1,0,2), nrow= 3)
C = matrix(c(0.5,1,-0.5,-1,0,0), nrow = 3)
solve(A)
B
B%*%A%*%C
sqrt()/2
