% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_authority_centrality.R
\name{get_authority_centrality}
\alias{get_authority_centrality}
\title{Get the authority scores for all nodes}
\usage{
get_authority_centrality(graph, weights_attr = NULL)
}
\arguments{
\item{graph}{a graph object of class
\code{dgr_graph}.}

\item{weights_attr}{an optional name
of the edge attribute to use in the
adjacency matrix. If \code{NULL} then,
if it exists, the \code{weight} edge
attribute of the graph will be used.}
}
\value{
a data frame with authority
scores for each of the nodes.
}
\description{
Get the Kleinberg
authority centrality scores for all
nodes in the graph.
}
\examples{
# Create a random graph using the
# `add_gnm_graph()` function
graph <-
  create_graph() \%>\%
  add_gnm_graph(
    n = 10,
    m = 15,
    set_seed = 23)

# Get the authority centrality scores
# for all nodes in the graph
graph \%>\%
  get_authority_centrality()

# Add the authority centrality
# scores to the graph as a node
# attribute
graph <-
  graph \%>\%
  join_node_attrs(
    df = get_authority_centrality(.))

# Display the graph's node data frame
graph \%>\%
  get_node_df()
}
