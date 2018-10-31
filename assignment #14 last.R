d

nile2
library(forecast)
ma_nile= ma(nile2, order = 2)
ma_nile=ma_nile[-1,]
ma_nile=ma_nile[-68,]
colnames(ma_nile) =c("year","flow")
fitted(ma_nile$flow)

ma2_nile=ma(ma_nile, order =2)
ma2_nile=ma2_nile[-1,]
ma2_nile
cbind(ma_nile,ma2_nile$flow)
write.csv(ma_nile,"b.csv")

ma_nile

write.csv(fit_arma, "fit_arma.csv")

#######################################################

fund = read.csv("a.csv")
rate_return = 0
for (i in 1:66){
rate_return[i] =  log(fund[i+1,1])-log(fund[i,1])  
}

rate_return
