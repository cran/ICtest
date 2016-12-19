\name{plot.ictest}
\alias{plot.ictest}

\title{
Scatterplot Matrix for a ictest Object
}
\description{
Plots the pairwise scatter plot matrix of the underlying components for an object of class ictest. The user can choose if only
the components considered interesting or all of them should be plotted.
}
\usage{
\method{plot}{ictest}(x, which = "all", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{object of class ictest}
  \item{which}{if \code{"all"}, then all components of S in the ictest object are plotted. If \code{"k"}, then only the first k components are plotted,
   where the value of \code{k} is taken from the ictest object. This is only meaningful if \code{k} was at least 2.}
  \item{\dots}{other arguments passed on to \code{\link{pairs}}.}
}


\author{
Klaus Nordhausen
}

\seealso{
\code{\link{ggplot.ictest}, \link{pairs}}
}
\examples{
n <- 200
X <- cbind(rnorm(n, sd = 2), rnorm(n, sd = 1.5), rnorm(n), rnorm(n), rnorm(n))

TestCov <- PCAasymp(X, k = 2)
plot(TestCov)
plot(TestCov, which = "k")
}


\keyword{hplot }
