## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#",
  fig.width = 7,
  fig.height = 4,
  fig.align = "center"
)

## ----message=FALSE------------------------------------------------------------
library(xts)
library(data.table)
library(sentopics)
data("ECB_press_conferences_tokens")
head(docvars(ECB_press_conferences_tokens))
set.seed(123)
lda <- LDA(ECB_press_conferences_tokens, K = 9, alpha = 1, beta = 0.001)
head(sentopics_date(lda))
head(sentopics_sentiment(lda))

## -----------------------------------------------------------------------------
xts_sent <- sentiment_series(lda, period = "month", rolling_window = 6)
plot(xts_sent)

## -----------------------------------------------------------------------------
lda <- grow(lda, 1000)
sentopics_labels(lda) <- list(
  topic = c(
    "Economic growth & Inflation", "Banking", "Payment services",
    "European single market", "Monetary policy & Negative rate",
    "Monetary policy & Price stability", "Others", "Banking supervision",
    "Financial markets"
  )
)
plot(lda)

## -----------------------------------------------------------------------------
document_datas <- sentopics::melt(lda, include_docvars = TRUE)
head(document_datas)
head(document_datas[, list(.date, topic, share_of_sentiment = prob * .sentiment), keyby = ".id"])

## -----------------------------------------------------------------------------
head(na.omit(sentiment_breakdown(lda, period = "month", rolling_window = 6)))
head(na.omit(sentiment_topics(lda, period = "month", rolling_window = 6)))

## -----------------------------------------------------------------------------
plot_sentiment_breakdown(lda, period = "month", rolling_window = 6)

## -----------------------------------------------------------------------------
plot_sentiment_topics(lda, period = "month", rolling_window = 6)

