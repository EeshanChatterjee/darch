\docType{methods}
\name{minimizeClassifier}
\alias{minimizeClassifier}
\title{Conjugate gradient for a classification network}
\usage{
  minimizeClassifier(darch,trainData,targetData,epoch,length,switchLayers)
}
\arguments{
  \item{darch}{A instance of the class
  \code{\link{DArch}}.}

  \item{trainData}{The training data matrix}

  \item{targetData}{The labels for the training data}

  \item{epoch}{The actual epoch of the training}

  \item{length}{Numbers of line search}

  \item{switchLayers}{Indicates when to train the full
  network instead of only the upper two layers}
}
\value{
  The trained \code{\link{DArch}} object.
}
\description{
  This function trains a \code{\link{DArch}} classifier
  network with the conjugate gradient method.
}
\details{
  This function is build on the basis of the code from G.
  Hinton et. al.
  (http://www.cs.toronto.edu/~hinton/MatlabForSciencePaper.html
  - last visit 06.06.2013) for the fine tuning of deep
  belief nets. The original code is located in the files
  'backpropclassify.m', 'CG_MNIST.m' and
  'CG_CLASSIFY_INIT.m'. It implements the fine tuning for a
  classification net with backpropagation using a direct
  translation of the \code{\link{minimize}} function from
  C. Rassmussen (available at
  http://www.gatsby.ucl.ac.uk/~edward/code/minimize/ - last
  visit 06.06.2013) to R. The parameter \code{switchLayers}
  is for the switch between two training type. Like in the
  original code, the top two layers can be trained alone
  until \code{epoch} is equal to \code{epochSwitch}.
  Afterwards the entire network will be trained.
}
\seealso{
  \code{\link{DArch}}
}

