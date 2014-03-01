\name{w.multi}
\alias{w.twoway}
\alias{w.ttest}
\alias{w.survival}
\alias{w.ci}
\alias{w.multi}
\alias{w.multireg}

\title{Create a formatted table for presentation}

\description{
Creates a formatted table for presentation and outputs to a file or clipboard.
}

\usage{
w.multireg(table = multireg.table, filename = "clipboard", CI = 0, signif = 0, en = 1)
w.multi(table = cox.table, filename = "clipboard", CI = 0, signif = 0, en = 1)
w.twoway(table = Fisher.summary.table, filename = "clipboard", en = 1)
w.ttest(table = summary.ttest, filename = "clipboard", en = 1)
w.survival(table = km.summary.table, filename = "clipboard", en = 1)
w.ci(table = ci.summary.table, filename = "clipboard", en = 1)
}

\arguments{
\item{table}{a table to output.}
\item{filename}{a filename for output. If omitted, a formatted table is copied to the clipboard.}
\item{CI}{If 0, confidence intervals are shown in parentheses.}
\item{signif}{Number of significant digits.}
\item{en}{If 1, creat a table in English.}
}

\details{
\code{w.twoway(table, filename)} function copies the results of two-way table analyses to the clipboard or text file. \cr\cr
\code{w.ttest(table, filename)} function copies the results of t-test to the clipboard or text file. \cr\cr
\code{w.survival(table, filename)} function copies the results of survival analyses to the clipboard or text file. \cr\cr
\code{w.ci(table, filename)} function copies the results of cumulative incidence analyses to the clipboard or text file. \cr\cr
\code{w.multireg(table, filename)} function copies the results of multiple regression to the clipboard or text file. \cr\cr
\code{w.multi(table, filename)} function copies the results of multivariate regression analyses to the clipboard or text file. \cr\cr
"table" can be omitted except for logistic regression analysis and Fine & Gray proportinal hazard regression analysis, in which "odds" and "crr.table" should be specified for "table"(default is "cox.table" to copy the results of Cox proportional hazard regression analysis).\cr
If "filename" is omitted, the formatted table will be copied to the clopboard, which can be pasted into a spreadsheet.\cr\cr  
These functions should be performed after executing corresponding analyses from the EZR menu.
}

\keyword{ package }
