\name{IPTW.ATE}
\alias{IPTW.ATE}

\title{Inverse probability of treatment weighting using stabilized weights based on propensity score}

\description{
Return stabilized weights calculated based on propensity score and assess balance of covariates between the groups.
}

\usage{
IPTW.ATE(GLM)
}

\arguments{
\item{GLM}{an object of class "glm", usually, a result of a call to glm.}
}

\details{
By putting the result of a logistic regression analysis to calculate propensity scores into IPTW.ATE(), this function returns a stabilized weight variable calculated based on propensity scores and assesses the balance of covariates between the groups.
}

\value{
an object of class "glm"
}

\keyword{ package }
