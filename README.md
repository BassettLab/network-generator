# network-generator
MATLAB package to generate networks.

For some standard networks, it uses [Python's](https://www.python.org/) [networkx](https://networkx.github.io/) library for standard network generation. For other networks, it borrows code from other sources (e.g., [Ann's website](https://sites.google.com/a/seas.upenn.edu/weighted-network-toolbox/network-construction)). You can also easily add other methods for generating networks.

## Installation
Make sure you have [python](https://www.python.org/downloads/) and [networkx](https://networkx.github.io/) installed.

Clone `network-generator` to your MATLAB environment. No need to add to path.

## Example
```
n = net.generate('topology','erdosrenyi',...
  'n',20,...
  'p',0.3,...
  'directed',true);
imagesc(n.A)
```

## Available network topologies

**[Erdos-Renyi](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.random_graphs.erdos_renyi_graph.html)** `erdosrenyi` <br>
**n** (int) number of nodes <br>
**p** (double) probability for edge creation <br>
**directed** (boolean, default=false) <br>

**[Random geometric](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.geometric.random_geometric_graph.html)** `randomgeometric` <br>
**n** (int) number of nodes <br>
**radius** (float) distance threshold value <br>
**dim** (int, default=2) dimension of graph <br>
**pos** (float, default=None) position of nodes, m-by-dim matrix

**[Watts-Strogatz](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.random_graphs.watts_strogatz_graph.html)** `wattsstrogatz` <br>
**n** (int) number of nodes <br>
**k** (int) each node is joined with its k nearest neighbors in a ring topology <br>
**p** (float) the probability of rewiring each edge

**[Scale-free](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.directed.scale_free_graph.html)** `scalefree` <br>
**n** (integer) number of nodes <br>
**alpha** (float, default=0.41) probability for adding a new node connected to an existing node chosen randomly according to the in-degree distribution<br>
**beta** (float, default=0.54) probability for adding an edge between two existing nodes <br>
**gamma** (float, default=0.05) probability for adding a new node connected to an existing node chosen randomly according to the out-degree distribution <br>
**delta_in** (float, default=0.2) bias for choosing ndoes from in-degree distribution <br>
**delta_out** (float, default=0) bias for choosing ndoes from out-degree distribution

**[Modular](https://arxiv.org/pdf/1706.05117.pdf)** `modular` <br>
**n** (int) number of nodes<br>
**k** (int) desired number of edges<br>
**m** (int) number of modules<br>
**p** (float, default=0.8) desired fraction of k within modules

**[Weighted random](https://docs.google.com/viewer?a=v&pid=sites&srcid=c2Vhcy51cGVubi5lZHV8d2VpZ2h0ZWQtbmV0d29yay10b29sYm94fGd4OjQ2MWMwYTE5ODdlODMwZmU)** `weightedrandom` <br>
**n** (int) number of nodes<br>
**p** (int) probability of edge/weight addition<br>

### Adding topology generators

1. Write a function that generates a topology. Add to the `+generators` directory. See examples in `+generators`. Add any auxiliaury code in `+imported`.
2. Update the above table.

## Troubleshooting
1. If your MATLAB can't find [networkx](https://networkx.github.io/), then see [this](https://erikreinertsen.com/python3-in-matlab/).

## To-do
Add additional topologies:
1. Directed versions of topologies
2. Generative growth model
3. Modular small-world networks
4. Hierarchical modular small-world networks
5. Graphical lasso with data

