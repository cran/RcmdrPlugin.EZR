\name{EZR}
\alias{EZR}
\alias{gassign}
\alias{ChrToFactor}
\alias{Cochran.Q.test}
\alias{EZRVersion}
\alias{EZRhelp}
\alias{OrderedPlot}
\alias{PowerHazard}
\alias{PowerMean}
\alias{PowerMeanPaired}
\alias{PowerProportion}
\alias{PowerProportionSingleArm}
\alias{RemoveOutlier}
\alias{SampleHazard}
\alias{SampleMean}
\alias{SampleMeanCI}
\alias{SampleMeanPaired}
\alias{SamplePhaseII}
\alias{SampleProportion}
\alias{SampleProportionCI}
\alias{SampleProportionNonInf}
\alias{SampleProportionSingleArm}
\alias{Steel}
\alias{Steel.Dwass}
\alias{currentFields}
\alias{dot.plot}
\alias{epi.kappa}
\alias{epi.tests}
\alias{error.bar}
\alias{listCoxModels}
\alias{listLMModels}
\alias{logrank.trend}
\alias{modelFormulaCox}
\alias{nrisk}
\alias{pairwise.friedman.test}
\alias{pairwise.gray.test}
\alias{pairwise.kruskal.test}
\alias{pairwise.logrank.test}
\alias{pairwise.pairedt.test}
\alias{pairwise.prop2.test}
\alias{par.option}
\alias{pdunnett}
\alias{print.ci.summary}
\alias{prop.conf}
\alias{prop.diff.conf}
\alias{prop.ratio.conf}
\alias{roc.best}
\alias{skewness.kurtosis}
\alias{stackcuminc}
\alias{step.p.cox}
\alias{step.p.coxtd}
\alias{step.p.crr}
\alias{step.p.glm}
\alias{step.p.lm}
\alias{stsplit}
\alias{summary.ci}
\alias{summary.km}
\alias{summary.table}
\alias{summary.table.MH}
\alias{trim.col.na}
\alias{waldtest}
\alias{waldtest.crr}
\alias{window.type}
\title{
Rcmdr Plug-In Package for the EZR (Easy R especially for medical statistics)
}
\description{
This package provides an R Commander plug-in EZR (Easy R), which adds a variety of statistical functions, including survival analyses, ROC analyses, metaanalyses, sample size calculation, and so on, to the R commander. EZR enables point-and-click easy access to a variety of statistical functions as shown below, especially for medical statistics. A report that introduced the investigation of EZR was published in \emph{Bone Marrow Transplantation} (Nature Publishing Group) as an Open article. This report can be used as a simple manual. It can be freely downloaded from the journal website (URL: \url{http://www.nature.com/bmt/journal/vaop/ncurrent/pdf/bmt2012244a.pdf}). A complete manual of EZR is available only in Japanese (Chugai Igakusha, ISBN-10: 4498109007, URL: \url{https://www.chugaiigaku.jp/modules/shop/index.php?main_page=product_info&products_id=1241})
}

\details{
\tabular{ll}{
Package: \tab RcmdrPlugin.EZR\cr
Type: \tab Package\cr
Version: \tab 1.12\cr
Date: \tab 2013-03-13\cr
License: \tab GPL (>= 2)\cr\cr
}
}

\section{Installation of EZR}{
RcmdrPlugin.EZR should be installed after the installation of Rcmdr and the other packages that Rcmdr or EZR depends on. Packagees that are required by Rcmdr can be installed at the first start-up of R commander. Packages required by EZR can be easily installed at the same time with the installation of EZR by copying and pasting the following command to the R console window after " > ".\cr\cr
\code{install.packages(pkgs="RcmdrPlugin.EZR", dependencies=TRUE)}\cr\cr
EZR is platform-independent, but only the Windows version of EZR can import Excel, Access, and dBase data set. This function requires "RODBC" package to be installed.\cr\cr
After installation, R commander can be started by the command, \code{library(Rcmdr)} from the R console. EZR can be loaded by selecting RcmdrPlugin.EZR from the "Tools" > "Load Rcmdr plug-in(s)" menu. Answer "Yes" to "Restart now?".\cr\cr
On Windows, EZR plugin package will be loaded when R commander is started, if the following sentence is added to the Rprofile.site file in etc folder in the R folder (C:\\Program Files\\R\\R-X.XX.X\\etc).\cr\cr
\code{options(Rcmdr=list(plugins="RcmdrPlugin.EZR"))}\cr\cr
In addition, if the following phrase is added to the command in "Target:" column on the "Shortcut" tab of the "Property" of "R" shorcut on the desktop (which can be opened by right-clicking on the shortcut), R commander will start at the same time with launching R.\cr\cr
\code{R_DEFAULT_PACKAGES="Rcmdr"}\cr\cr
Therefore, if these two options were added, EZR can be started just by double-clicking on the "R" shortcut on the desktop.\cr\cr
The default data folder can be changed by right-clicking on this "R" shortcut on the desktop, selecting "Properties", and replacing the folder name in the "Start in:" column on the "Shortcut" tab.\cr\cr
}

\section{EZR statistical functions}{
EZR includes following statistical functions.\cr\cr
\emph{For discrete variables}\cr\cr
Frequency distributions/cr
Confidence interval for a proportion\cr
One sample proportion test\cr
Confidence interval for a difference between two proportions\cr
Confidence interval for a ratio of two proportions\cr
Compare two proportions (Fisher's exact test and Chi-square test)\cr
Compare proportions of two paired samples (McNemar test)\cr
Compare proportions of more than two paired samples (Cochran Q test)\cr
Cochran-Armitage test for trend in proportions\cr
Logistic regression\cr\cr
\emph{For continuous variables}\cr\cr
Numerical summaries\cr
Smirnov-Grubbs test for outliers\cr
Kolmogorov-Smimov test for normal distribution\cr
Confidence interval for a mean\cr
Single-sample t-test\cr
Two-variances F-test\cr
Two-sample t-test\cr
Paired t-test\cr
Bartlett's test\cr
One-way ANOVA\cr
Repeated-measures ANOVA\cr
Multi-way ANOVA\cr
ANCOVA\cr
Test for Pearson's correlation\cr
Linear regression\cr\cr
\emph{For nonparametric tests for continuous variables}\cr\cr
Mann-Whitney U test\cr
Wilcoxon's signed rank test\cr
Kruskal-Wallis test\cr
Friedman test\cr
Jonckheere-Terpstra test\cr
Spearman's rank correlation test\cr\cr
\emph{For survival analysis}\cr\cr
Kaplan-Meier survival curve and logrank test\cr
Logrank trend test\cr
Cox proportional hazard regression\cr
Cox proportional hazard regression with time-dependent covariate\cr
Cumulative incidence of competing events and Gray test\cr
Fine-Gray proportional hazard regression for competing events\cr\cr
\emph{For diagnostic test analysis}\cr\cr
Accuracy of qualitative test\cr
Kappa statistics for agreement of two tests\cr
Compute positive and negative predictive values\cr
ROC curve analysis for quantitative test\cr
Compare two ROC curves\cr
Cronbach's alpha coefficient for reliability\cr\cr
\emph{For matched-pair analysis}\cr\cr
Extract matched controls (This function relys on optmatch package and is limietd to academic use.)\cr
Mantel-Haenzel test for matched proportions\cr
Conditional logistic regression for matched-pair analysis\cr
Stratified Cox proportional hazard regression for matched-pair analysis\cr\cr
\emph{For meta-analysis and meta-regression test}\cr\cr
Meta-analysis and meta-regression test for proportions\cr
Meta-analysis and meta-regression test for means\cr
Meta-analysis and meta-regression test for hazard ratios\cr\cr
\emph{For smaple size and power calculation}\cr\cr
Calculate sample size from control and desired response rates\cr
Calculate sample size from proportion and confidence interval\cr
Calculate sample size or power for comparison with specified proportion\cr
Calculate sample size or power for comparison between two proportions\cr
Calculate sample size for non-inferiority trial of two proportions\cr
Calculate sample size from standard deviation and confidence interval\cr
Calculate sample size or power for comparison between two means\cr
Calculate sample size or power for comparison between two paired means\cr
Calculate sample size or power for comparison between two survival curves\cr\cr
\emph{For drawing graphs}\cr\cr
Bar graph(Frequencies)\cr
Pie chart(Frequencies)\cr
Stem-and-leaf display\cr
Histogram\cr
Bar graph(Means)\cr
Line graph(Means)\cr
Line graph(Repeated measures)\cr
Boxplot\cr
Dot chart\cr
Ordered chart\cr
Scatterplot\cr
Scatterplot matrix\cr
Adjusted survival curve\cr
Stacked cumulative incidences\cr\cr
\emph{Statistical functions from original R commander}\cr\cr
Principal-components analysis\cr
Factor analysis\cr
k-means cluster analysis\cr
Hierarchical cluster analysis\cr
Summarize hierarchical clustering\cr
Add hierarchical clustering to data set\cr
Linear hypothesis\cr
Variance-inflation factor\cr
Breusch-Pagan test for heteroscedasticity\cr
Durbin-Watson test for autocorrelation\cr
RESET test for nonlinearity\cr
Bonferroni outlier test\cr
Basic diagnostic plots\cr
Residual quantile-comparison plot\cr
Component+residual plots\cr
Added-variable plots\cr
Influence plot\cr
Effect plots\cr\cr
}

\section{Basic operations in EZR}{
These EZR functions can be started by point-and-click access using the items on the menu bar. See \code{\link{EZRdialogs}} for details. R commander automatically creates and executes corresponding R commands that appear in the "Script window". Results are shown in the "Output window". If any errors or warnings are noted, messages will appear in the "Message window". The created commands can be saved by selecting "File" > "Save script" on the menu bar. The output can be saved by selecting "File" > "Save output". By saving the commands, users can reproduce the analyses and can also share the procedure with the other investigators.\cr\cr
The following EZR functions can be executed by typing the commands in the "Script window" and clicking on the "Submit" button.\cr\cr
Following functions are built to create a formatted table for presentation.\cr\cr
   \code{w.twoway(table, filename)} function copies the results of two-way table analyses to the clipboard or text file. \cr\cr
   \code{w.ttest(table, filename)} function copies the results of t-test to the clipboard or text file. \cr\cr
   \code{w.survival(table, filename)} function copies the results of survival analyses to the clipboard or text file. \cr\cr
   \code{w.ci(table, filename)} function copies the results of cumulative incidence analyses to the clipboard or text file. \cr\cr
   \code{w.multi(table, filename)} function copies the results of multivariate regression analyses to the clipboard or text file. \cr\cr
"table" can be omitted except for logistic regression analysis and Fine & Gray proportinal hazard regression analysis, in which "odds" and "crr.table" should be specified for "table"(default is "cox.table" to copy the results of Cox proportional hazard regression analysis).\cr
If "filename" is omitted, the formatted table will be copied to the clopboard, which can be pasted into a spreadsheet.\cr\cr
   \code{Mantel.Byar()} functon is for Mantel-Byar test, which should be performed after executing "Cox proportional hazard modeling with time-dependent covariate".\cr\cr
}

\author{
Yoshinobu Kanda <ycanda-tky@umin.ac.jp>\cr
Maintainer: Yoshinobu Kanda <ycanda-tky@umin.ac.jp>
}

\section{Translations}{
EZR comes with translations from English into Japanese.
}

\references{
Its complete manual is available only in Japanese (Chugai Igakusha, ISBN-10: 4498109007, URL: \url{https://www.chugaiigaku.jp/modules/shop/index.php?main_page=product_info&products_id=1241}), but a report that introduced the investigation of EZR was published in \emph{Bone Marrow Transplantation} (Nature Publishing Group) as an Open article. This report can be used as a simple manual. It can be freely downloaded from the journal website as shown below.
 
Yoshinobu Kanda (2012).
Investigation of the freely available easy-to-use software EZR for medical statistics.
\emph{Bone Marrow Transplantation} (Open article, URL: \url{http://www.nature.com/bmt/journal/vaop/ncurrent/pdf/bmt2012244a.pdf}).\cr\cr

EZR web site:
Division of Hematology, Saitama Medical Center, Jichi Medical University. URL: \url{http://www.jichi.ac.jp/saitama-sct/SaitamaHP.files/statmedEN.html}
} 

\keyword{ package }