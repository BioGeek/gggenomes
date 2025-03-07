% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_link.R
\name{geom_link}
\alias{geom_link}
\title{Draw links}
\usage{
geom_link(
  mapping = NULL,
  data = links(),
  stat = "identity",
  position = "identity",
  na.rm = FALSE,
  show.legend = NA,
  inherit.aes = TRUE,
  offset = 0.15,
  ...
)
}
\arguments{
\item{offset}{distance between seq center and link start. Use two values
\verb{c(<offset_top>, <offset_bottom>)} for different top and bottom offsets}
}
\description{
Note that by default only links between adjacent genomes are computed and
shown. Set \code{gggenomes(..., adjacent_only=TRUE)} to compute and show all links
between all genomes.
}
\examples{
p <- gggenomes(seqs=emale_seqs, links = emale_ava) + geom_seq()
p + geom_link()
# change offset from seqs
p + geom_link(aes(fill=de, color=de), offset = 0.05) +
  scale_fill_viridis_b() + scale_colour_viridis_b()
# combine with flip
p \%>\% flip(3,4,5) + geom_link()
# compute & show all links among all genomes (not recommended for large dataset)
gggenomes(links=emale_ava, adjacent_only = FALSE) + geom_link()
}
