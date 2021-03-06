% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plot_accessibility_in_pseudotime}
\alias{plot_accessibility_in_pseudotime}
\title{Plot accessibility by pseudotime}
\usage{
plot_accessibility_in_pseudotime(cds_subset, breaks = 10)
}
\arguments{
\item{cds_subset}{Subset of the CDS object you want to plot. The CDS must
have a column in the pData table called "Pseudotime".}

\item{breaks}{Number of breaks along pseudotime. Controls the courseness of
the plot.}
}
\value{
ggplot object
}
\description{
Make a barplot of chromatin accessibility across pseudotime
}
\details{
This function plots each site in the CDS subset by cell pseudotime
  as a barplot. Cells are divided into bins by pseudotime (number determined
  by \code{breaks}) and the percent of cells in each bin that are accessible
  is represented by bar height. In addition, the black line represents the
  pseudotime-dependent average accessibility from a smoothed binomial
  regression.
}
\examples{
\dontrun{
plot_accessibility_in_pseudotime(input_cds_lin[c("chr18_38156577_38158261",
                                                 "chr18_48373358_48374180",
                                                 "chr18_60457956_60459080")])
}

}
