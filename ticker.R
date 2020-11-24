source("R/kuant.R")

print(list.files())

# ==> Step 1. get tickers
tickers <- get_tickers()

tickers %>%
  filter(`시장구분` == '코스닥') ->
  kospi_tickers

write_tickers(kospi_tickers)
