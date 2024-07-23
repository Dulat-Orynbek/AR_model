require('quantmod')
getSymbols('^GSPC' , src = 'yahoo')

returns = diff(log(Ad(GSPC)))
acf(returns , na.action = na.omit)

model = ar(returns, na.action = na.omit)
model$order
acf(model$resid , na.action = na.omit)

