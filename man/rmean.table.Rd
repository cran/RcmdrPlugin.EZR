\name{rmean.table}
\alias{rmean.table}

\title{caluculation of restricted mean survival}

\description{
Caluculate and compare restricted mean survival.
}

\usage{
rmean.table(x=km, rmean="common")
}

\arguments{
\item{x}{survfit object}
\item{rmean}{specify a value of the truncation time point for the restricted mean survial calculation, e.g.,rmean=365. Other options are "none" (no estimate), "common" and "individual". The "common" option uses the maximum time for all curves in the object as a common upper limit for the auc calculation. For the "individual"options the mean is computed as the area under 
each curve, over the range from 0 to the maximum observed time for that curve. Since the end point is random, values for different curves are not comparable and the printed standard errors are an underestimate as they do not take into account this random variation. This option is provided mainly for backwards compatability, as this estimate was the default (only) one in earlier releases of the code.}
}

\details{
Calculates restricted mean survival with a truncation time point as specified by rmean option. Also tests the difference in the restricted mean survival, if there are only two groups. This function should be perfomed after "Kaplan-Meier survival curve and logrank test" function of EZR (or after executing survfit() command).
}

\keyword{ package }
