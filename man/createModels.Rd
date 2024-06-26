% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BuildModel.R
\name{createModels}
\alias{createModels}
\title{Model Building Function}
\usage{
createModels(data, ...)
}
\arguments{
\item{data}{data.frame or data.table, from which data for model is taken}

\item{...}{objects of class "formula", a symbolic description of the
model to be fitted, same as in \link[stats]{glm}}
}
\value{
list of logistic regression models, with class glm and also new logisMod class
}
\description{
Function makes models based on given formulas, created using variable's names
from analised data table.
}
\examples{
createModels(citrus, nameBin ~ diameter)

# even when an error occurs it is possible to continue, but we will get 
# a warning about it
createModels(citrus, nameBin ~ diameter, red ~ diameter, nameBin ~ weight)
}
