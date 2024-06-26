% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ElementsErrorMatrix.R
\name{visualErrorMatrix}
\alias{visualErrorMatrix}
\title{Visualization of Confusion / Error Matrix}
\usage{
visualErrorMatrix(thres_prob, Y_vec, model)
}
\arguments{
\item{thres_prob}{numeric from 0 to 1, threshold of success' probability - if predicted
probability of dependent variable is higher than threshold, the event is counted as a success}

\item{Y_vec}{dependent variable Y which takes the values 0 and 1}

\item{model}{a fitted object of class inheriting from "logisMod"}
}
\value{
plot which represents Confusion / Error Matrix for model
}
\description{
function displays Confusion / Error Matrix.
}
\examples{
model <- createModels(citrus, nameBin ~ diameter + green + blue)
p <- 0.6

visualErrorMatrix(p, citrus$nameBin, model)

}
