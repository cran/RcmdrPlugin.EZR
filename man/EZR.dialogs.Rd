\name{EZR dialogs}
\alias{EZRdialogs}
\alias{StatMedANCOVA}
\alias{StatMedANOVA}
\alias{StatMedAdjustedSurvival}
\alias{StatMedBarGraph}
\alias{StatMedBarMeans}
\alias{StatMedBartlett}
\alias{StatMedBinVariable}
\alias{StatMedBoxPlot}
\alias{StatMedCLogistic}
\alias{StatMedChangePalette}
\alias{StatMedChrToFactor}
\alias{StatMedCloseCommander}
\alias{StatMedCochranQ}
\alias{StatMedCompute}
\alias{StatMedCopyDataset}
\alias{StatMedCorrelation}
\alias{StatMedCountMissing}
\alias{StatMedCoxRegression}
\alias{StatMedCoxTD}
\alias{StatMedCrr}
\alias{StatMedCumInc}
\alias{StatMedDatediff}
\alias{StatMedDeleteVariable}
\alias{StatMedDummy}
\alias{StatMedEnterTable}
\alias{StatMedExportDataSet}
\alias{StatMedExportStata}
\alias{StatMedFTest}
\alias{StatMedFactorToNumeric}
\alias{StatMedFilterNA}
\alias{StatMedFrequency}
\alias{StatMedFriedman}
\alias{StatMedGraphOptions}
\alias{StatMedGroupsBox}
\alias{StatMedQQPlot}
\alias{StatMedHistogram}
\alias{StatMedImportMinitab}
\alias{StatMedImportExcel}
\alias{StatMedImportRODBCtable}
\alias{StatMedImportSPSS}
\alias{StatMedImportSTATA}
\alias{StatMedJT}
\alias{StatMedKS}
\alias{StatMedKaplanMeier}
\alias{StatMedKappa}
\alias{StatMedKruWalli}
\alias{StatMedLinePlot}
\alias{StatMedLinearRegression}
\alias{StatMedLoadDataSet}
\alias{StatMedLoadWorkspace}
\alias{StatMedLog}
\alias{StatMedLogisticRegression}
\alias{StatMedLogrankTrend}
\alias{StatMedMH}
\alias{StatMedMannW}
\alias{StatMedMcNemar}
\alias{StatMedMeanCI}
\alias{StatMedMergeDatasets}
\alias{StatMedMeta}
\alias{StatMedMetaCont}
\alias{StatMedMetaHazard}
\alias{StatMedModelFormula}
\alias{StatMedMultiANOVA}
\alias{StatMedNAgroup}
\alias{StatMedNewVar}
\alias{StatMedNewVar2}
\alias{StatMedNumericToFactor}
\alias{StatMedNumericalSummaries}
\alias{StatMedOptMatch}
\alias{StatMedOrderedChart}
\alias{StatMedPairedTtest}
\alias{StatMedPieChart}
\alias{StatMedPlotMeans}
\alias{StatMedPowerHazard}
\alias{StatMedPowerMeans}
\alias{StatMedPowerMeansPaired}
\alias{StatMedPowerProportions}
\alias{StatMedPowerProportionsSingle}
\alias{StatMedPredictiveValue}
\alias{StatMedProbCI}
\alias{StatMedProbDiffCI}
\alias{StatMedProbRatioCI}
\alias{StatMedProbSingle}
\alias{StatMedPropTrend}
\alias{StatMedRenameDataset}
\alias{StatMedROC}
\alias{StatMedROCtest}
\alias{StatMedReadDataSet}
\alias{StatMedReliability}
\alias{StatMedRenameVariables}
\alias{StatMedRenewDataSet}
\alias{StatMedReorderFactor}
\alias{StatMedRepANOVA}
\alias{StatMedSG}
\alias{StatMedSampleHazard}
\alias{StatMedSampleMeans}
\alias{StatMedSampleMeansCI}
\alias{StatMedSampleMeansPaired}
\alias{StatMedSamplePhaseII}
\alias{StatMedSampleProportions}
\alias{StatMedSampleProportionsCI}
\alias{StatMedSampleProportionsNonInf}
\alias{StatMedSampleProportionsSingle}
\alias{StatMedSaveDataSet}
\alias{StatMedScatterPlot}
\alias{StatMedScatterPlotMatrix}
\alias{StatMedSetContrasts}
\alias{StatMedSetPalette}
\alias{StatMedSingleSampleTTest}
\alias{StatMedSort}
\alias{StatMedSpearman}
\alias{StatMedStCox}
\alias{StatMedStack}
\alias{StatMedStackCumInc}
\alias{StatMedStemAndLeaf}
\alias{StatMedStripChart}
\alias{StatMedSubsetBox}
\alias{StatMedSubsetDataSet}
\alias{StatMedSummaryResults}
\alias{StatMedTableOne}
\alias{StatMedTest}
\alias{StatMedTtest}
\alias{StatMedTwoWayTable}
\alias{StatMedVariableCheck}
\alias{StatMedWilSign}
\alias{StatMedcloseCommander}
\alias{StatMedcloseCommanderAndR}
\alias{StatMedplotMeans}

\title{EZR dialogs}
\description{
  EZR dialogs enable point-and-click easy access to a variety of statistical functions.
}

\details{
EZR dialogs enable point-and-click easy access to a variety of statistical functions.\cr\cr
To select more than one variable in the list box, click on variables pressing Ctrl key, and to deselct one of the selected variables, click on the variable to deselect pressing Ctrl key.\cr\cr
To perform analyses in a subset of the samples, type an R expression into the box labelled "Condition to limit samples for analysis". For example, to perform analysis in male patients aged at least 60 years old, type \code{Age >= 60 & Sex == "Male"} into the box, assuming that \code{Age} and \code{Sex} variables indicate age and sex of the patients, respectively.\cr\cr
}

\section{Cautions in multivariate analyses using EZR}{
When a categorical variable with more than two categories is to be analyzed in Fine and Gray regression modeling, dummy variables should be created before an analysis, although such dummy variables are automatically created in multiple regression, logistic regression and Cox proportional hazards regression in R. For example, if a user wants to evaluate the effect of three types (A, B, and C) of treatments, information for which is included in the categorical variable \code{Tx} as "A", "B" and "C", they would select "Active data set" > "Variables" > "Create dummy variables" from the EZR menu to make three categorical variables named \code{Tx.Dummy.A}, \code{Tx.Dummy.B}, and \code{Tx.Dummy.C}.\cr\cr
\code{Tx.Dummy.A} has a value of 1 for patients who received treatment A and 0 for others. Users should choose one of the three categories as a reference and input dummy variables for the other two categories into the regression model.\cr\cr
The stepwise selection function of explanatory variables based on Akaike information criterion and Bayesian information criterion only accepts dummy variables automatically created by R, whereas stepwise selection based on P-value also accepts dummy variables created by a user using EZR. If the option for a "Wald test for overall P-value for factors with >2 levels" is selected in the dialog of the regression analyses, the overall P-value for the categorical variable will be calculated.\cr\cr
Survival curves adjusted for other factors by the mean of covariates method, in which average values of covariates are entered into the Cox proportional hazards model, can be drawn by selecting "Graphs" > "Adjusted survival curve".\cr
}

\references{
Read follwing article for details. It can be freely downloaded from the journal website as shown below.\cr\cr 
Yoshinobu Kanda (2012).
Investigation of the freely available easy-to-use software EZR for medical statistics.
\emph{Bone Marrow Transplantation} (Open article, URL: \url{http://www.nature.com/bmt/journal/vaop/ncurrent/pdf/bmt2012244a.pdf}).\cr\cr
} 
