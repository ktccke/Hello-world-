

library(truncnorm)
a = as.data.frame
for (j in 1:10){
a = rtruncnorm(100, a=-1 , b = 1 , mean = 0 ,sd = 1)
z = 0
for (i in 1:100){
  
z[i] = sum(a[1:i])
}
q[,j]=z}  #ended up manual in put


################################move back to excel


{c = rtruncnorm(100, a=-1 , b = 1 , mean = 0 ,sd = 1)

d = 0
d[1] = 0

for (i in 1:100){
d[i+1] = d[i]+c[i] 
}}
write.csv(c,file = "cc.csv")  # it is saved in project folder


#####secnod one

{b = rtruncnorm(101, a=-1 , b = 1 , mean = 0 ,sd = 1)
c10= 0
for (i in 1:101){
c10[i+1] = b[i+1]-1/2*b[i]  
}}
write.csv(c,file = "ccc2.csv")  # it is saved in project fold
class(c)

mean(c)





#####revised

 observations = c(1:100)
plot(observations,q, type = "l")+
lines(q2)+
  lines(q3)+
  lines(q4)+
  lines(q5)+
  lines(q6)+
  lines(q7)+
  lines(q8)+
  lines(q9)+
  lines(q10)
  
A = c(q,q2,q3,q4,q5,q6,q7,q8,q9,q10)
A = as.data.frame(A)
write.csv(A,"revised.csv")
A = matrix(A,100)

View(A)
var(A[10,])
var(A[,4])

str(A)
dim(A)
A = as.numeric(A)


#################


c1 = c1[2:101]
c2 = c2[2:101]
c3 = c3[2:101]
c4 = c4[2:101]
c5 = c5[2:101]
c6 = c6[2:101]
c7 = c7[2:101]
c8 = c8[2:101]
c9 = c9[2:101]
c10 = c10[2:101]


B = 0
AA = c(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10)
View(AA)
B = matrix(AA,100)
View(B)
write.csv(B,"revised.csv")
var(B[100,])




plot(observations,c1, type = "l")+
  lines(c2)+
  lines(c3)+
  lines(c4)+
  lines(c5)+
  lines(c6)+
  lines(c7)+
  lines(c8)+
  lines(c9)+
  lines(c10)

