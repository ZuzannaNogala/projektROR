% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/computeAUC.R
\name{computeAUC}
\alias{computeAUC}
\title{Computing AUC}
\usage{
computeAUC(strNameY, data, models)
}
\arguments{
\item{strNameY}{characteristic, name of dependent variable which takes values
0 and 1}

\item{data}{a data.table or data.frame object, from which data for models is taken}

\item{models}{a fitted object or objects' list of class inheriting from "logisMod"}
}
\value{
a data.table object with area under ROC curve for each model
}
\description{
function finds the Area Under the Receiver Operating Characteristic
curve (AUC). The area under curve lies between 0 to 1. The greater value of AUC
denotes better model performance. If AUC equals 0.5, the model is random
classifier. It means the model randomly decides that if event is success or not.
}
\examples{
models <- createModels(citrus, nameBin ~ diameter +blue + red, nameBin ~ weight + green)
model <- createModels(citrus, nameBin ~ diameter + blue + red)

computeAUC("nameBin", citrus, models)
computeAUC("nameBin", citrus, model)

}
