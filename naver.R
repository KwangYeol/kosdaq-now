library(devtools)
source_url("https://raw.githubusercontent.com/KwangYeol/kospi-now/main/R/kuant.R")

print(list.files())

# ==> Step 1. get tickers
fpath <- file.path("data", "tickers.csv")
tickers <- read_tickers(fpath)

# ==> Step 2. get symbols
tickers %>%
  select('종목코드') %>%
  t %>%
  as.vector ->
  ticker_list

ticker_list <- c(ticker_list, "kosdaq")
symbols <- get_symbols(ticker_list, count=7000)

write_symbols(symbols)
