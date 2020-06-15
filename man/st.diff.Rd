\name{st.diff}
\alias{st.diff.binom}
\alias{st.diff.multinom}
\alias{st.diff.categor}
\alias{st.diff.numeric}
\alias{st.diff.binom.w}
\alias{st.diff.multinom.w}
\alias{st.diff.numeric.w}
\alias{st.diff.categor.w}

\title{Calculate standardized difference to assess balance of covariates in unweighted and weighted dataset.}

\description{
Calculate standardized difference to assess balance of covariates in unweighted and weighted dataset.
}

\usage{
st.diff.binom(factor, group)
st.diff.multinom(factor, group)
st.diff.categor(factor, group)
st.diff.numeric(numeric, group)
st.diff.binom.w(factor, weight, group)
st.diff.multinom.w(factor, weight, group)
st.diff.categor.w(factor, weight, group)
st.diff.numeric.w(numeric, weight, group)
}

\arguments{
\item{factor}{factor variable in vector for balace assessment.}
\item{numeric}{numeric variable in vector for balace assessment.}
\item{group}{group variable in vector for balace assessment.}
\item{weight}{weight variable in vector for balace assessment of weighted dataset.}
}

\details{
st.diff.binom(), st.diff.multinom(), st.diff.categor() and st.diff.numeric() functions calculate standardized difference of factor variables and numeric variables, respectively, in unweighted dataset. st.diff.binom.w(), st.diff.multinom.w(), st.diff.categor.w() and st.diff.numeric.w() functions calculate standardized difference of factor variables and numeric variables, respectively, in weighted dataset. st.diff.binom() and st.diff.binom.w() are for binomial factors, st.diff.multinom() and st.diff.multinom.w() are for multinomial factors, and st.diff.categor() and st.diff.categor() are for factors irrespective of levels. 
}

\keyword{ package }
