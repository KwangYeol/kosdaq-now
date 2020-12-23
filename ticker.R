.libPaths( c(Sys.getenv("RENV_PATHS_ROOT"), .libPaths()))

library(devtools)
source_url("https://raw.githubusercontent.com/KwangYeol/kospi-now/main/R/kuant.R")

print(list.files())

# ==> Step 1. get tickers
tickers <- get_tickers()

tickers %>%
  filter(`시장구분` == '코스닥') ->
  kosdaq_tickers

write_tickers(kosdaq_tickers)
