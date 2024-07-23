# AR Model

This project implements an Autoregressive (AR) model using the 'quantmod' package in R. The implementation is provided in two scripts: `1.R` and `2.R`. The only difference between them is the dataset used:

- `1.R` uses IBM stock prices.
- `2.R` uses the S&P 500 index (`^GSPC`).

## AR Model Overview

The AR model is a generalization of the random walk model. Instead of relying solely on white noise, it leverages past observations:

x[t] = b_1*x[t-1] + b_2*x[t-2] +...+ b_p*x[t-p]
where \( p \) is the order of the AR model.

The order \( p \) is determined using the Akaike Information Criterion (AIC).

## Results

- For IBM stock prices, the algorithm performed well with an AR order \( p = 10 \).
- For the S&P 500 index, the model overfitted the data, indicating that while the AR model can be effective, it may not always be the best choice.
