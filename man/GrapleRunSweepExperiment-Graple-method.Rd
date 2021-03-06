% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GrapleR.R
\docType{methods}
\name{GrapleRunSweepExperiment,Graple-method}
\alias{GrapleRunSweepExperiment,Graple-method}
\title{Used to run a sweep experiment with a json file providing job description
also, an optional filter can be run on the results generated}
\usage{
\S4method{GrapleRunSweepExperiment}{Graple}(grapleObject, filterName)
}
\arguments{
\item{grapleObject}{A Graple Object}

\item{filterName}{An optional post-process filter name}
}
\value{
The status message is updated on Graple object and the Graple object is returned
}
\description{
Used to run a sweep experiment with a json file providing job description
also, an optional filter can be run on the results generated
}
\examples{
\dontrun{
grapleObject <- Graple(ExpRootDir="C:/InputDirectory", ResultsDir="C:/ResultsDirectory", TempDir = tempdir())
GrapleRunSweepExperiment(grapleExp1)
GrapleRunSweepExperiment(grapleExp1, 'ExtractVariables')
}
}
