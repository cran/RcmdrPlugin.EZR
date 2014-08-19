\name{Mantel.Byar}
\alias{Mantel.Byar}

\title{mantel-Byar test}

\description{
Performs Mantel-Byar test for comparison of survival data with a time-dependent covariate.
}

\usage{
Mantel.Byar(Group = TempTD$covariate_td, Event = TempTD$endpoint_td, 
StartTime = TempTD$start_td, StopTime = TempTD$stop_td, 
method = c("SAS", "Tominaga"), plot=0)
}

\arguments{
\item{Group}{Time-dependent covariate.}
\item{Event}{a vector for event.}
\item{StartTime}{a vector for starting time.}
\item{StopTime}{a vector for stopping time.}
\item{method}{method for analysis. "SAS" or "Tominaga"}
\item{plot}{plot=1 to plot survival curves.}
}

\details{
Performs Mantel-Byar test for comparison of survival data with a time-dependent covariate. This function should be performed after executing "Cox proportional hazard modeling with time-dependent covariate" from the EZR menu. This Mantel.Byar() function does not work correctly when subgroup is defined in Cox proportional hazard modeling.
}

\keyword{ package }
