# network-generator
MATLAB package to generate networks.

It uses [Python's](https://www.python.org/) [networkx](https://networkx.github.io/) library for standard network generation, but can easily allow for other methods for generating networks.

## Installation
Make sure you have [python](https://www.python.org/downloads/) and [networkx](https://networkx.github.io/) installed.

Clone `network-generator` to your MATLAB environment. No need to add to path.

## Example
```
n = net.generate('topology','erdosrenyi',...
  'n',20,'p',0.3,'directed',true);
imagesc(n.A)
```

## Available network topologies
|Topology|Function|Parameters|
|---|---|---|
|[Erdos-Renyi](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.random_graphs.erdos_renyi_graph.html#networkx.generators.random_graphs.erdos_renyi_graph)|`erdosrenyi(n,p,directed)`|<ul><li>*n* (int) - The number of nodes </li><li>*p* (double) - Probability for edge creation </li><li>*directed* (boolean)</li></ul>|
|[random geometric](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.geometric.random_geometric_graph.html#networkx.generators.geometric.random_geometric_graph)|`randomgeometric(n,radius,dim)`|<ul><li>*n* (int) - Number of nodes or iterable of nodes</li><li>*radius* (float) - Distance threshold value</li><li>*dim* (int, optional) - Dimension of graph</li></ul>|
|[Watts-Strogatz](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.random_graphs.watts_strogatz_graph.html#networkx.generators.random_graphs.watts_strogatz_graph)|`wattsstrogatz(n,k,p)`|<ul><li>*n* (int) - The number of nodes</li><li>*k* (int) - Each node is joined with its k nearest neighbors in a ring topology</li><li>*p* (float) - The probability of rewiring each edge</li></ul>|
|[Scale-free](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.directed.scale_free_graph.html#networkx.generators.directed.scale_free_graph)|`scalefree(n)`|<ul><li>*n* (integer) – Number of nodes in graph</li><li>*alpha* (float) – Probability for adding a new node connected to an existing node chosen randomly according to the in-degree distribution. (not yet supported)</li><li>*beta* (float) – Probability for adding an edge between two existing nodes. (not yet supported)</li><li>*gamma* (float) – Probability for adding a new node connected to an existing node chosen randomly according to the out-degree distribution. (not yet supported)</li><li>*delta_in* (float) – Bias for choosing ndoes from in-degree distribution. (not yet supported)</li><li>*delta_out* (float) – Bias for choosing ndoes from out-degree distribution. (not yet supported)</li></ul>|

### Adding topology generators

1. Write a function that generates a topology. Add to the `+generators` directory. See examples in `+generators`.
2. Update the **Available network topologies** section in this README file.

## Troubleshooting
1. If your MATLAB can't find [networkx](https://networkx.github.io/), then see [this](https://erikreinertsen.com/python3-in-matlab/).
