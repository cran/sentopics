% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{plot.multiChains}
\alias{plot.multiChains}
\title{Plot the distances between topic models (chains)}
\usage{
\method{plot}{multiChains}(
  x,
  ...,
  method = c("euclidean", "hellinger", "cosine", "minMax", "naiveEuclidean",
    "invariantEuclidean")
)
}
\arguments{
\item{x}{a valid \code{multiChains} object, obtained through the estimation of a
topic model using \code{\link[=fit.sentopicmodel]{fit()}} and the argument
\code{nChains} greater than \code{1}.}

\item{...}{not used}

\item{method}{the method used to measure the distance between chains.}
}
\value{
Invisibly, the coordinates of each topic model resulting from the
multidimensional scaling.
}
\description{
Plot the results of \code{chainsDistance(x)} using multidimensional
scaling. See \code{\link[=chainsDistances]{chainsDistances()}} for details on the distance computation
and \code{\link[stats:cmdscale]{stats::cmdscale()}} for the implementation of the multidimensional
scaling.
}
\examples{
models <- LDA(ECB_press_conferences_tokens)
models <- fit(models, 10, nChains = 5)
plot(models)
}
\seealso{
\code{\link[=chainsDistances]{chainsDistances()}} \code{\link[=cmdscale]{cmdscale()}}
}
