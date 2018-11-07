# EDA
autoplot(uschange[,"Consumption"]) +
  xlab("Year") + ylab("Quarterly percentage change")
# FIT
fit <- auto.arima(uschange[,"Consumption"], seasonal=FALSE)
# Forecast
fit %>% forecast(h=10) %>% autoplot(include=80)
fit %>% forecast(h=10)

ggAcf(uschange[,"Consumption"],main="")
ggPacf(uschange[,"Consumption"],main="")
#ARIMA(p,d,0) or ARIMA(0,d,q) model
(fit2 <- Arima(uschange[,"Consumption"], order=c(3,0,0)))
(fit3 <- auto.arima(uschange[,"Consumption"], seasonal=FALSE,
                    stepwise=FALSE, approximation=FALSE))

#The likelihood is the probability of the data arising from the specified model.
