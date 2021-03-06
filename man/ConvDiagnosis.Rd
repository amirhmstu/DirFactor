% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{ConvDiagnosis}
\alias{ConvDiagnosis}
\title{Calculate Rhat statistic and generate traceplots for MCMC results}
\usage{
ConvDiagnosis(lsMCMC, start, end, thin, title, truth = NA, n.eig = 1,
  fast.eig = TRUE)
}
\arguments{
\item{lsMCMC}{A list of MCMC simulation results. \code{lsMCMC>=2} is required for the Rhat statistic
calculation.}

\item{start}{The iteration number of the first observation.}

\item{end}{The iteration number of the last observation.}

\item{thin}{The thinning interval between consecutive observations.}

\item{title}{The title of each figure.}

\item{n.eig}{Number of eigen values the diagnosis will consider. Default is 1.}

\item{fast.eig}{Whether to use fast eigen decomposition algorithm. Default is TRUE and \code{eig_sym} from
\code{rARPACK} package will be used.}

\item{If}{provided, a list contains the simulation truth for the dataset. 
Must include two fields \code{Y}, the latent biological sample factors, and
\code{er}, the variance of the pure error.}
}
\value{
A matrix contains the Rhat statistics. The first column is the point estimates and the second
column is the upper confidence limits. \code{n.eig} traceplots will also be generated for the first 
\code{n.eig} eigenvalues.
}
\description{
Calculate Rhat statistic and generate traceplots for MCMC results
}
\note{
The diagnosis is carried out using the MCMC samples of the first \code{n.eig} eigenvalues of the
normalized between-sample Gram matrix.
}

