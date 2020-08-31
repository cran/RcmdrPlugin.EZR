\name{Mantel.Byar}
\alias{Mantel.Byar}

\title{mantel-Byar test}

\description{
Performs Mantel-Byar test for comparison of survival data with a time-dependent covariate.
}

\usage{
Mantel.Byar(Group = NULL, Event = TempTD$endpoint_td, 
StartTime = TempTD$start_td, StopTime = TempTD$stop_td, 
method = c("SAS", "Tominaga"), plot=0, landmark=0)
}

\arguments{
\item{Group}{the name of the time-dependent covariate. If NULL, the last column name of the TempTD dataset will be used.}
\item{Event}{a vector for event.}
\item{StartTime}{a vector for starting time.}
\item{StopTime}{a vector for stopping time.}
\item{method}{method for analysis. "SAS" or "Tominaga"}
\item{plot}{plot=1, 2, or 3 to plot Simon and Makuch survival curves. Line discrimination with colors (plot=1), line types (plot=2), or width (plot=3). }
\item{landmark}{landmark for Simon and Makuch plot.}
}

\details{
Performs Mantel-Byar test for comparison of survival data with a time-dependent covariate. This function should be performed just after executing "Cox proportional hazard modeling with time-dependent covariate" from the EZR menu. If plot is set to 1, Simon and Makuch plot is drawn with a landmark as specified.
}

\keyword{ package }
