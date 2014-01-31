\name{prune}
\alias{prune}
\alias{prune.default}
\alias{prune.dendrogram}
\alias{prune.hclust}
\alias{prune.phylo}
\title{Trim a tree (using leaves' labels)}
\usage{
prune(x, ...)

\method{prune}{dendrogram}(x, leaves,...)

\method{prune}{hclust}(x, leaves,...)

\method{prune}{phylo}(x, ...)
}
\arguments{
  \item{x}{tree object (dendrogram/hclust/phylo)}

  \item{leaves}{a character vector of the label(S) of the
  tip(s) (leaves) we wish to prune off the tree.}

  \item{...}{passed on}
}
\value{
A pruned tree
}
\description{
Trimms a tree (dendrogram, hclust) from a set of leaves
based on their labels.
}
\details{
I was not sure if to call this function drop.tip (from
ape), snip/prune (from rpart) or just remove.leaves.  I
ended up deciding on prune.
}
\examples{
hc <- hclust(dist(USArrests[1:5,]), "ave")
dend <- as.dendrogram(hc)

par(mfrow = c(1,2))
plot(dend, main = "original tree")
plot(prune(dend , c("Alaska", "California")), main = "tree without Alaska and California")
}
\seealso{
\link{prune_leaf}, \link[ape]{drop.tip} {ape}
}
