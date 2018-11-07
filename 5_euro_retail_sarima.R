# EDA
autoplot(euretail) + ylab("Retail index") + xlab("Year")
# munge
euretail %>% diff(lag=4) %>% ggtsdisplay()
euretail %>% diff(lag=4) %>% diff() %>% ggtsdisplay()
# modeling
euretail %>%
  Arima(order=c(0,1,1), seasonal=c(0,1,1)) %>%
  residuals() %>% ggtsdisplay()

fit3 <- Arima(euretail, order=c(0,1,3), seasonal=c(0,1,1))
checkresiduals(fit3)

fit3 %>% forecast(h=12) %>% autoplot()
fit3 %>% forecast(h=12)

# auto arima
auto.arima(euretail)
auto.arima(euretail, stepwise=FALSE, approximation=FALSE)


