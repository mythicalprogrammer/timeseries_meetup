autoplot(goog200) +
  xlab("1000 consecutive trading days 2/25/2013 to 2/13/2017")
+ ylab("closing stock price")
# stationary test
Box.test(goog200, lag=10, type="Ljung-Box")
Box.test(diff(goog200), lag=10, type="Ljung-Box")
