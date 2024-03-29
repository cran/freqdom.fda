% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fts.plot.operators.R
\name{fts.plot.operators}
\alias{fts.plot.operators}
\title{Contour plot of operator kernels.}
\usage{
fts.plot.operators(A, res = 200, lags = 0, freq = 0, axis = "Re", nlevels = 25)
}
\arguments{
\item{A}{an object of class \code{fts.timedom} or \code{\link{fts.freqdom}}.}

\item{res}{number of discretization points to evaluate functional data.}

\item{lags}{a vector of integers. For objects of class \code{\link{fts.timedom}}
the lags of the operators we want to plot.}

\item{freq}{a vector of frequencies in \eqn{[-\pi,\pi]}. For an object of class
\code{fts.freqdom} the frequencies at which we want to plot the operator. If the
chosen frequencies are not contained in \code{A$freq}, the closest frequencies will be used.}

\item{axis}{if \code{"Re"} we plot the real part, if \code{"Im"} we plot the imaginary part of a complex-valued operator.}

\item{nlevels}{number of color levels for the contour plot.}
}
\description{
Contour plot of operator kernels.
}
\examples{
# Load example PM10 data from Graz, Austria
data(pm10) # loads functional time series pm10 to the environment
X = center.fd(pm10)

# Compute functional dynamic principal components with only one component
res.dpca = fts.dpca(X, Ndpc = 1, freq=(-25:25/25)*pi) # leave default freq for higher precision

# Plot the spectral density operator at frequencies -2, -3:3/30 * pi and 2
fts.plot.operators(res.dpca$spec.density,freq = c(-2,-3:3/30 * pi,2))
}
\keyword{plotting}
