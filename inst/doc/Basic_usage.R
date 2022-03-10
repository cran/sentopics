## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#",
  fig.width = 7,
  fig.height = 4,
  fig.align = "center"
)

## -----------------------------------------------------------------------------
library(sentopics)
data("ECB_press_conferences_tokens")
print(ECB_press_conferences_tokens, 3)
head(docvars(ECB_press_conferences_tokens))

## -----------------------------------------------------------------------------
set.seed(123)
lda <- LDA(ECB_press_conferences_tokens)
lda
lda <- grow(lda, iterations = 100)
lda

## -----------------------------------------------------------------------------
str(lda, max.level = 1, give.attr = FALSE)

## -----------------------------------------------------------------------------
head(lda$theta)
topWords(lda, output = "matrix")

## -----------------------------------------------------------------------------
melt(lda, include_docvars = TRUE)

## -----------------------------------------------------------------------------
sentopics_labels(lda) <- list(
  topic = c("Inflation", "Fiscal policy", "Governing council", "Financial sector", "Uncertainty")
)
head(lda$theta)
plot_topWords(lda) + ggplot2::theme_grey(base_size = 9)

## -----------------------------------------------------------------------------
merged <- mergeTopics(lda, list(
  `Big big thematic` = c(1, 3:5),
  `Fical policy` = 2
))
merged

## -----------------------------------------------------------------------------
plot(lda)

## -----------------------------------------------------------------------------
plot(merged)

