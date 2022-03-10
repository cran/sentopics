% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{chainsScores}
\alias{chainsScores}
\title{Compute scores of topic models (chains)}
\usage{
chainsScores(x, window = 110, nWords = 10, nCores = 1)
}
\arguments{
\item{x}{a valid \code{multiChains} object, obtained through the estimation of a
topic model using \code{\link[=grow]{grow()}} and the argument \code{nChains} greater than \code{1}.}

\item{window}{optional. If \code{NULL}, use the default window for each coherence
metric (10 for C_NPMI and 110 for C_V). It is possible to override these
default windows by providing an integer or \code{"boolean"} to this argument,
determining a new window size for all measures.}

\item{nWords}{the number of words used to compute coherence. See
\code{\link[=coherence]{coherence()}}.}

\item{nCores}{allows for parallel computation by setting a number greater
than 1.}
}
\value{
A \code{data.table} with some statistics about each chain. For the
coherence metrics, the value shown is the mean coherence across all topics
of a chain
}
\description{
Compute various scores (log likelihood, coherence) for a list of topic
models.
}
\examples{
model <- LDA(ECB_press_conferences_tokens[1:10])
model <- grow(model, 10, nChains = 5)
chainsScores(model, window = 5)
chainsScores(model, window = "boolean")

}
\seealso{
\code{\link[=chainsDistances]{chainsDistances()}} \code{\link[=coherence]{coherence()}}
}