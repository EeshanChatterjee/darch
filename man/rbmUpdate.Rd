\docType{methods}
\name{rbmUpdate}
\alias{rbmUpdate}
\title{Function for updating the weights and biases of an \code{\link{RBM}}}
\usage{
  rbmUpdate(rbm)
}
\arguments{
  \item{rbm}{A instance of the class \code{\link{RBM}}.}
}
\value{
  The updated \code{\link{RBM}}.
}
\description{
  This function updates the weights and biases for an
  \code{\link{RBM}} network. It is saved in the attribute
  \code{updateFunction} of the \code{\link{RBM}} object and
  called from the training function \code{\link{trainRBM}}.
}
\seealso{
  \code{\link{RBM}}
}

