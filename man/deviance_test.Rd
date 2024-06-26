% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DevianceTest.R
\name{deviance_test}
\alias{deviance_test}
\title{Deviance test for two logistic models}
\usage{
deviance_test(models, alpha = 0.05)
}
\arguments{
\item{models}{fitted objects' list of class inheriting from "logisMod". One model is from null
hypothesis (models with less predictors are supported) and second one is alternative
(models with more predictors are supported)}

\item{alpha}{numeric, significance level of test, value from 0 to 1}
}
\value{
list of testing predictors' names, value of deviance statistic,
degrees of freedom, critical value of deviance statistic and p-value.
}
\description{
function returns deviance test summary to verify null hypothesis H0: predictors
from set A is insignificant vs alternative H1: significant predictor exists in set A (full model)
}
\examples{
models <- createModels(citrus, nameBin ~ diameter + blue + weight, nameBin ~ weight)
                 
deviance_test(models, alpha = 0.1)

}
