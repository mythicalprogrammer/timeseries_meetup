#unit root test
library(urca)
goog %>% ur.kpss() %>% summary()
goog %>% diff() %>% ur.kpss() %>% summary()
