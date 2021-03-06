% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scan_qtl_to_qtl2.R
\name{scan_qtl_to_qtl2}
\alias{scan_qtl_to_qtl2}
\title{Convert R/qtl scanone results to R/qtl2 scan1 format}
\usage{
scan_qtl_to_qtl2(scanone_output)
}
\arguments{
\item{scanone_output}{Data frame as output by the R/qtl1 function \code{\link[qtl:scanone]{qtl::scanone()}}.}
}
\value{
List with two objects: the LOD scores in \code{\link[qtl2:scan1]{qtl2::scan1()}}
format, and the map (as a list of marker/pseudomarker
positions).
}
\description{
Convert the results of R/qtl1 \code{\link[qtl:scanone]{qtl::scanone()}} to the form used by the R/qtl2 \code{\link[qtl2:scan1]{qtl2::scan1()}}.
}
\examples{
library(qtl)
data(hyper)
hyper <- calc.genoprob(hyper, step=1, error.prob=0.002)
out <- scanone(hyper)
out2 <- scan_qtl_to_qtl2(out)

}
\seealso{
\code{\link[=scan_qtl_to_qtl2]{scan_qtl_to_qtl2()}}
}
