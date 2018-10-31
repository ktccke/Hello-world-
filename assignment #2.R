employ = read.csv("C:/Users/changju/Desktop/일본으로 가는/고용률.csv", head =F)[1:2,3:19]

employ2 = ts(data = employ)

lemploy3 = t(employ2)
plot(employ3, main ="2000~2016년도까지의 고용률",  ylab = c("고용률(%)"), xlab = "한국전체(년도)", ylim = c(50,70), xlim =c(0,16)+1)



#######try another way ########


###########################
library(ggplot2)
###########################
employ = read.csv("C:/Users/changju/Desktop/일본으로 가는/고용률.csv", head =F)[1:2,3:19]

str(employ)
dim(employ)
head(employ)
employ = t(employ)
str(employ)
employ = as.data.frame(employ)
colnames(employ) = c('growth','rate')

ggplot(data = employ, aes(x = growth ,  y = rate)) + geom_line()
ggplot(data = employ, aes(x = growth )) + geom_line(aes(y = rate, color = 'red')) 
   



price = read.csv("C:/Users/changju/Desktop/일본으로 가는/시계열/price.csv", head =F)
head(price)
dim(price)
price = read.csv("C:/Users/changju/Desktop/일본으로 가는/시계열/price.csv", head =F)[c(1,2),2:28]
price = t(price)

str(price)
price = as.data.frame(price)
colnames(price) = c('growth2','ex_price')
ggplot(data = price, aes(x =growth2, y = ex_price)) + geom_line() 

#######
ggplot(data =mpg, aes(x =growth , y = hwy)) + geom_line()

#######

currency = read.csv("C:/Users/changju/Desktop/일본으로 가는/시계열/currency.csv", head =F)
head(currency)
dim(currency)
currency = read.csv("C:/Users/changju/Desktop/일본으로 가는/시계열/currency.csv", head =F)[c(1,3),2:24]
currency = t(currency)
currency = as.data.frame(currency,stringsAsFactors =F)  #####kkull tip
colnames(currency) = c('growth','current')
str(currency)

currency$year = as.numeric(currency$growth)        ####we don't have to do this when we use kkul tip
currency$current = as.numeric(currency$growth)

ggplot(data = currency, aes(x =growth, y = current)) + geom_line() 



###########assignment no 2(regression) compare with excel #############

employ
attach(employ)

summary(lm(rate ~ growth, data = employ))   #is it linear poly?? maybe it is
employ_ano = lm(rate ~ (growth)*(growth), data = employ)
anova(employ_ano)

growth2 = growth^2
summary(lm(rate ~ growth2+growth, data = employ))  
employ_ano2 = lm(rate ~ growth2+growth1, data = employ)
anova(employ_ano2)








