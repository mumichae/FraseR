% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotationOfRanges.R
\name{annotateRanges}
\alias{annotateRanges}
\title{Annotates the given FraseRDataSet with the HGNC symbol with biomaRt}
\usage{
annotateRanges(
  fds,
  feature = "hgnc_symbol",
  featureName = feature,
  biotype = list("protein_coding"),
  ensembl = NULL
)
}
\arguments{
\item{fds}{FraseRDataSet}

\item{feature}{Defines which feature (default is HGNC symbol) should be 
annotated.}

\item{featureName}{Name of the feature in the FraseRDataSet mcols.}

\item{biotype}{The biotype.}

\item{ensembl}{The ensembl that should be used. If NULL, the default one is 
used (hsapiens_gene_ensembl, GRCh37).}
}
\value{
FraseRDataSet
}
\description{
Annotates the given FraseRDataSet with the HGNC symbol with biomaRt
}
\examples{

fds <- countRNAData(createTestFraseRSettings())
fds <- annotateRanges(fds)

rowRanges(fds, type="psi5")[,"hgnc_symbol"]

}
