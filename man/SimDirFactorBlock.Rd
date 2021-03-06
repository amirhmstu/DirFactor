% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{SimDirFactorBlock}
\alias{SimDirFactorBlock}
\title{Generate synthetic OTU abundance table from DirFactor model with block diagonal 
between-sample Gram matrix.}
\usage{
SimDirFactorBlock(vcounts, n, p, m, hyper, K = 1, a = 2)
}
\arguments{
\item{vcounts}{Required. A vector of total counts per biological sample. Example: 
\code{vcounts=c(1e5,1e6)}.}

\item{n}{Required. Number of biological samples in the simualted table.}

\item{p}{Required. Number of species in the simulated dataset.}

\item{m}{Required. True number of factors in the simulated dataset.}

\item{hyper}{Required. A list of hyper-parameters in the priors. See Details in \link{DirFactor} for the
fields in this list.}

\item{K}{Number of diagonal blocks in the Gram matrix of biological samples. Default is 1 (not block diagonal).}

\item{a}{Random weights of species are generated by \code{sigma*Q^a*(Q>0)}. Default is 2.}
}
\value{
A list contains the following fields:
\itemize{
  \item \code{sigma}: a vector with \code{p} components of simulated \code{sigma}.
  \item \code{Q}: a \eqn{p*n} matrix of normal latent variables.
  \item \code{X.tru}: a \eqn{m*p} matrix of species latent factors.
  \item \code{Y.tru}: a \eqn{m*n} matrix of biological sample latent factors.
  \item \code{er}: a scalar of the simulated pure error.
  \item \code{data}: a list with the same size of \code{vcounts}. \code{data[[i]]} is the simulated
  dataset with total counts \code{vcounts[[i]]}.
  }
}
\description{
Generate synthetic OTU abundance table from DirFactor model with block diagonal 
between-sample Gram matrix.
}
\examples{
my.hyper = list( nv = 3, a.er = 1, b.er = 0.3, a1 = 3, 
                 a2 = 4, m = 10, alpha = 10, beta = 0 )
SimDirFactorBlock( vcounts=c(1e5,1e6), n = 22, p = 68, m = 3, hyper = my.hyper )
}

