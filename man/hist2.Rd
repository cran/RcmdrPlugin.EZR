\name{hist2}
\alias{hist2}

\title{Modified version of hist()}

\description{
The modified points from the original hist() are 1) hist2() uses Scott argorithm instead of Sturges. 2) hist2() adds a group below the lowest group created by hist().
}
\usage{
hist2(x, breaks="scott", plot=TRUE, ...)
}

\arguments{
\item{x}{a vector of values for which the histogram is desired.}
\item{breaks}{see hist() for details.}
\item{plot}{logical. If TRUE (default), a histogram is plotted.}
\item{...}{further arguments and graphical parameters passed to plot.histogram and thence to title and axis (if plot = TRUE).}
}

\details{
See hist() for details. 
}

\seealso{\code{\link{hist}}}

\keyword{ package }
