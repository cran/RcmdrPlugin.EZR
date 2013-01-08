\name{ifelse2}
\alias{ifelse2}

\title{Conditional Element Selection}

\description{
ifelse2 returns a value with the same shape as test which is filled with elements selected from either yes or no depending on whether the element of test is TRUE or FALSE. Modified from ifelse.
}
\usage{
ifelse2(test, yes, no)
}

\arguments{
\item{test}{an object which can be coerced to logical mode.}
\item{yes}{return values for true elements of test.}
\item{no}{return values for false elements of test.}
}

\details{
The only difference from \code{ifelse} is that, when missing valuses in \code{test}, \code{ifelse} gives missing values in the result, whereas \code{ifelse2} gives values for false elements of test.
}

\seealso{\code{\link{ifelse}}}

\keyword{ package }
