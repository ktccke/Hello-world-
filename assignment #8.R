setwd("C:/Users/changju/Desktop/일본으로 가는/시계열")


A = read.csv("assignment8_f.csv")
colnames(A) = c("aa")
observations = c(1:111)
bb = log(observations)
lm(aa~ observations, data = A)
summary(lm(aa~ observations, data = A))

lm(aa~ observations+ bb, data = A)

summary(lm(aa~ observations+ bb, data = A))



