\name{rmean.table}
\alias{rmean.table}
\alias{rmean.table.adjusted}

\title{caluculation of restricted mean survival}

\description{
Caluculate and compare restricted mean survival.
}

\usage{
rmean.table(x=km, tau=NULL)
rmean.table.adjusted(x=coxmodel, tau=NULL)
}

\arguments{
\item{x}{survfit object}
\item{tau}{specify a value of the truncation time point for the restricted mean survial calculation, e.g.,tau=365. When tau=NULL, the default value (i.e., the minimum of the largest observed "event" time in each of the two groups) is used.}
}

\details{
rmean.table() function calculates restricted mean survival with a truncation time point as specified by tau option. Also tests the difference in the restricted mean survival, if there are only two groups. This function should be perfomed after "Kaplan-Meier survival curve and logrank test" function of EZR (or after executing survfit() command). rmean.table() function does not support stratified analysis. rmean.table.adjusted() function calculates adjusted restricted mean survival. This function should be perfomed after "Adjusted survival curve" function of EZR.
}

\keyword{ package }
