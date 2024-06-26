% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ResponsePlot.R
\name{resPlot.logisMod}
\alias{resPlot.logisMod}
\title{Plot of predicted probabilities}
\usage{
\method{resPlot}{logisMod}(x, ...)
}
\arguments{
\item{x}{model of class logisMod}

\item{...}{other parameters}
}
\value{
plot of predicted probabilities for one dependent variable
}
\description{
Function plots predicted probabilities in comparison to true values. For use
when we created model and want to plot it. Only for one-variable models (intercept included).
}
\details{
This method uses \code{stats::glm(formula, x, family = "binomial")}, please
take care of proper type of the arguments.

Error also occurs when you want to plot without intercept, because we should include it.
}
\examples{
model <- createModels(citrus, nameBin ~ red)[[1]]
resPlot(model)
}
