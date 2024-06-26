% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NewPredict.R
\name{predictBasedData}
\alias{predictBasedData}
\title{Prediction of new values}
\usage{
predictBasedData(object, pred_data)
}
\arguments{
\item{object}{a fitted object of class inheriting from "logisMod'}

\item{pred_data}{data frame in which to look for variables with which to predicts}
}
\description{
Prediction of new values
}
\details{
This function is fixed form of \code{stats::predict.glm}. For more details or
different version see \link[stats]{predict.glm}.
}
\examples{
library(data.table)
model <- createModels(citrus, nameBin ~ red)
predData <- citrus[["red"]]
newData <- list()
newData[["red"]] <- seq(min(predData), max(predData), 0.1)
newData <- as.data.table(newData)

predictBasedData(model[[1]], newData)

}
