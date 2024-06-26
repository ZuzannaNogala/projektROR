% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/KFoldCV.R
\name{kFoldCV}
\alias{kFoldCV}
\title{K-Fold Cross Validation}
\usage{
kFoldCV(data, K, threshold, strNameY, pred, fun = ".acc", ...)
}
\arguments{
\item{data}{data.table, set of data we want apply logistic regresion to}

\item{K}{integer, number of folds}

\item{threshold}{numeric from 0 to 1, threshold of success' probability -
if predicted probability of dependent variable is higher than treshold, the
event is counted as a success, if vector then for each accuracy score is computed}

\item{strNameY}{character, name of dependent variable Y which takes the values 0 and 1}

\item{pred}{character vector, vector of predictors' names,
must be columns of \code{data}}

\item{fun}{function name as character, to use for comparison, by default accuracy}

\item{...}{addictional \code{fun} paramteres, with names}
}
\value{
data.table with choosen threshold and its accuracy score (by default), or mean from result of another function
}
\description{
Implementation of K-Fold Cross Validation technique for logistic regression.
In this technique, the parameter K refers to the number of different subsets
that the given data set is to be split into. Further, K-1 subsets are used
to train the model and the left out subsets are used as a validation set. For
each subset we count accuracy, then we get accuracy score by applying mean
to all the accuracies received for all folds (by default). It is also possible
to add another function with paraeters describing true values, predicted values and
number of observations. Then mean of results from each iteration is computed.
}
\examples{
kFoldCV(citrus, 4, 0.5, "nameBin", c("red", "blue"))
kFoldCV(citrus, 4, c(0.1, 0.5), "nameBin", c("red", "blue"))

}
