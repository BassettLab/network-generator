## Application program interface

**[Erdos-Renyi network](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.random_graphs.erdos_renyi_graph.html)** `erdosrenyi` <br> <a name="erdosrenyi"/>
**n** (int) number of nodes <br>
**p** (double) probability for edge creation <br>
**directed** (boolean, default=false) <br>

**[Weighted random network](https://docs.google.com/viewer?a=v&pid=sites&srcid=c2Vhcy51cGVubi5lZHV8d2VpZ2h0ZWQtbmV0d29yay10b29sYm94fGd4OjQ2MWMwYTE5ODdlODMwZmU)** `weightedrandom` <br> <a name="weightedrandom"/>
**n** (int) number of nodes<br>
**p** (int) probability of edge/weight addition<br>

**[Random geometric network](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.geometric.random_geometric_graph.html)** `randomgeometric` <br> <a name="randomgeometric"/>
**n** (int) number of nodes <br>
**radius** (float) distance threshold value <br>
**dim** (int, default=2) dimension of graph <br>
**pos** (float, default=None) position of nodes, m-by-dim matrix

**[Watts-Strogatz graphh](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.random_graphs.watts_strogatz_graph.html)** `wattsstrogatz` <br> <a name="wattsstrogatz"/>
**n** (int) number of nodes <br>
**k** (int) each node is joined with its k nearest neighbors in a ring topology <br>
**p** (float) the probability of rewiring each edge

**[Scale-free network](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.directed.scale_free_graph.html)** `scalefree` <br> <a name="scalefree"/>
**n** (integer) number of nodes <br>
**alpha** (float, default=0.41) probability for adding a new node connected to an existing node chosen randomly according to the in-degree distribution<br>
**beta** (float, default=0.54) probability for adding an edge between two existing nodes <br>
**gamma** (float, default=0.05) probability for adding a new node connected to an existing node chosen randomly according to the out-degree distribution <br>
**delta_in** (float, default=0.2) bias for choosing ndoes from in-degree distribution <br>
**delta_out** (float, default=0) bias for choosing ndoes from out-degree distribution

**[Modular network](https://arxiv.org/pdf/1706.05117.pdf)** `modular` <br> <a name="modular"/>
**n** (int) number of nodes<br>
**k** (int) desired number of edges<br>
**m** (int) number of modules<br>
**p** (float, default=0.8) desired fraction of k within modules

**[Modular small-world network](https://sites.google.com/site/bctnet/null#TOC-generative-network-models)** `modularsmallworld` <br> <a name="modularsmallworld"/>
**n** (int) number of nodes (must be power of 2) <br>
**k** (int) number of edges <br>
**sz_cl** (int) size of clusters (power of 2) <br>

**[Hierarchical modular small-world network](https://sites.google.com/site/bctnet/null#TOC-generative-network-models)** `hierarchicalmodularsmallworld` <br> <a name="hierarchicalmodularsmallworld"/>
**mx_lvl** (int) number of hierarchical levels, `N = 2^mx_lvl` <br>
**e** (float) connection density fall-off per level <br>
**sz_cl** (int) size of clusters (power of 2)

**[Generative graph](https://sites.google.com/site/bctnet/null#TOC-generative-network-models)** `generative` <br> <a name="generative"/>
**A** (binary network) seed connections <br>
**D** (float, matrix) Euclidean distance/fiber length matrix <br>
**m** (int) number of connections that should be present in final synthetic network <br>
**modeltype** (string) specifies the generative rule (see below) <br>
**modelvar** (string, 'powerlaw'} or {'exponential') basis for generative rules <br>
**params** either a vector (in the case of the geometric model) or a matrix (for all other models) of parameters at which the model should be evaluated <br>
**epsilon** (float, default=1e-5) the baseline probability of forming a particular connection (should be a very small number)

Full list of model types (each model type realizes a different generative rule):
1.  'sptl'          spatial model
2.  'neighbors'     number of common neighbors
3.  'matching'      matching index
4.  'clu-avg'       average clustering coeff.
5.  'clu-min'       minimum clustering coeff.
6.  'clu-max'       maximum clustering coeff.
7.  'clu-diff'      difference in clustering coeff.
8.  'clu-prod'      product of clustering coeff.
9.  'deg-avg'       average degree
10. 'deg-min'       minimum degree
11. 'deg-max'       maximum degree
12. 'deg-diff'      difference in degree
13. 'deg-prod'      product of degree
