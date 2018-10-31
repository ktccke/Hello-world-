employ = read.csv("C:/Users/changju/Desktop/일본으로 가는/고용률.csv", head =F)[1:2,3:19]

str(employ)
dim(employ)
head(employ)
employ = t(employ)
str(employ)
employ = as.data.frame(employ)
colnames(employ) = c('year1','rate')  # make the slowly moving time series
library(ggplot2)


ggplot(data = employ, aes(x = year1 , y = rate)) + geom_line() 

summary(lm(rate ~ year1, data = employ)) 



######another model
year2 = employ$year1^2

summary(lm(rate ~ year1+year2, data = employ)) 

######another model
year3 = log(employ$year1)

summary(lm(rate ~ year1+year3, data = employ)) 


### second step
anova(lm(rate ~ year1, data = employ))


##############residual plot##############


emply_lm  = lm(rate ~ year1, data = employ)

emply_res = resid(emply_lm)

plot(employ$year1, emply_res)

abline(0,0)
qqnorm(employ$rate)
qqline(employ$rate)




######################seasonal data ###############################


haku5 = read.csv("haku5.csv", head = T)
dim(haku)
View(haku5)
time = c(1:113)
plot(haku, type = 'l')  # we can write line with this 

lm(hakusai ~ sec1 + sec2 + sec3 + sec4, data = haku4)
summary(lm(hakusai ~ time +sec1 + sec2 + sec3 + sec4, data = haku4))
lm(hakusai ~ time + season, data = haku5 )
summary(lm(hakusai ~ time + season, data = haku5))



