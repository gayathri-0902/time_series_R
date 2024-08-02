# Time Series Analysis of Twitter Sentiment

This repository contains the code and documentation for the Time Series Analysis of Twitter Sentiment project conducted using R. The project aims to analyze and visualize the sentiment of tweets over the past year.

## Table of Contents
- [Introduction](#introduction)
- [Data Description](#data-description)
- [Methodology](#methodology)
- [Results](#results)

## Introduction
Time series analysis is a statistical technique that deals with time series data or trend analysis. This project focuses on analyzing and visualizing Twitter sentiment data over a year using various time series techniques.

## Data Description
The data used in this project includes Twitter sentiment scores over the past year. The dataset consists of the following columns:
- `created_at`: The date of the tweet.
- `category`: The sentiment score of the tweet.

## Methodology
The project follows these steps:
1. **Data Preprocessing**: Handling missing values, generating synthetic timestamps for each tweet.
2. **Exploratory Data Analysis (EDA)**: Visualizing the data to understand underlying patterns, trends, and seasonality.
3. **Modeling**: Creating and smoothing the time series data using the `zoo` package.
   - Generating time series object with `zoo`.
   - Applying rolling mean for smoothing.
4. **Visualization**: Plotting the daily sentiment trends using `ggplot2`.

## Results
The analysis provided insights into the trends and seasonality present in the Twitter sentiment data. The smoothed time series and daily aggregated sentiment showed clear patterns that can be used for further analysis and forecasting.

## Plot
![Daily Sentiment Analysis Over Time](daily_sentiment_plot.pdf)

