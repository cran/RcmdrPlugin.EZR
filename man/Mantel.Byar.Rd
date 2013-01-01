\name{Mantel.Byar}
\alias{Mantel.Byar}

\title{mantel-Byar test}

\description{
Performs Mantel-Byar test for comparison of survival data with a time-dependent covariate.
}

\usage{
Mantel.Byar(Group = TempTD$covariate_td, Event = TempTD$endpoint_td, StartTime = TempTD$start_td, StopTime = TempTD$stop_td, method = c("SAS", "Tominaga"))
}

\arguments{
\item{Group}{Time-dependent covariate.}
\item{Event}{a vector for event.}
\item{StartTime}{a vector for starting time.}
\item{StopTime}{a vector for stopping time.}
\item{method}{method for analysis. "SAS" or "Tominaga"}
}

\details{
Performs Mantel-Byar test for comparison of survival data with a time-dependent covariate. This function should be performed after executing "Cox proportional hazard modeling with time-dependent covariate" from the EZR menu.
}

\keyword{ package }
