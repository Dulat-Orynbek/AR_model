require('quantmod')
getSymbols('IBM' , src = 'yahoo')

returns = diff(log(Ad(IBM)))
acf(returns , na.action = na.omit)

model = ar(returns, na.action = na.omit)
acf(model$resid , na.action = na.omit)
