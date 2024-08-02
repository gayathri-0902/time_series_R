library(rtweet)
library(tidyverse)
library(syuzhet)
library(zoo)
library(readxl)
library(ggplot2)

twitter_data <- read_excel("Twitter_Data.xlsx")

start_date <- Sys.Date() - 365  # 365 days ago
end_date <- Sys.Date()

twitter_data$created_at <- as.Date(sample(seq(start_date, end_date, by = "days"), nrow(twitter_data), replace = TRUE))


y_limits <- c(-6,6)


time_series <- zoo(twitter_data$category, order.by = as.POSIXct(twitter_data$created_at))


 
smoothed_time_series <- rollmean(time_series, k = 10, align = "right", fill = NA)


 
daily_sentiment <- aggregate(twitter_data$category, by = list(Date = twitter_data$created_at), FUN = mean)

ggplot(daily_sentiment, aes(x = Date, y = x)) +
 geom_line() 
 