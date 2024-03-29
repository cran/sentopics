% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sentopics.R
\docType{data}
\name{LoughranMcDonald}
\alias{LoughranMcDonald}
\title{Loughran-McDonald lexicon}
\format{
A \link[quanteda:dictionary]{quanteda::dictionary} containing two polarity categories (negative
and positive) and two valence-shifting categories (negator and amplifier).
}
\source{
\url{https://sraf.nd.edu/loughranmcdonald-master-dictionary/} for the
lexicon and \link[lexicon:hash_valence_shifters]{lexicon::hash_valence_shifters} for the valence shifters.
}
\usage{
LoughranMcDonald
}
\description{
The Loughran-McDonald lexicon for financial texts adapted for
usage in \strong{sentopics}. The lexicon is enhanced with two list of
valence-shifting words.
}
\examples{
JST(ECB_press_conferences_tokens, lexicon = LoughranMcDonald)

}
\references{
Loughran, T. & McDonald, B. (2011). \href{https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1331573}{When Is a Liability Not a Liability? Textual Analysis, Dictionaries, and 10-Ks}. \emph{The Journal of
Finance}, 66(1), 35--65.
}
\seealso{
\code{\link[=JST]{JST()}}, \code{\link[=rJST]{rJST()}}
}
\keyword{datasets}
