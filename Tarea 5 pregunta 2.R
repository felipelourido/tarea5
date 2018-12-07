library(dplyr)
library(Quandl)
library(quantmod)
library(tidyquant)
library(PerformanceAnalytics)


#Pregunta 1

tickers = c("MSFT", "AAPL")

data_activos = tq_get(tickers,
                       get = "stock.prices",
                       from = "2000-01-01",
                       to = "2018-08-31",
                       periodicity = "monthly")

#Pregunta 2

msft = data_activos %>% filter(symbol == "MSFT") %>% select(adjusted)

aapl = data_activos %>% filter(symbol == "AAPL") %>% select(adjusted)

msft %>% for (row in 1:nrow(adjusted)) {
  prices = 
  
}


dos_a = function(x) {
  n = log10(2)/log10(1+(x/100))
  return(n)
}

dos_a(12)

