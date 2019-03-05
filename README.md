# network-generator
MATLAB package to generate networks.

It uses [Python's](https://www.python.org/) [networkx](https://networkx.github.io/) library for standard network generation, but can easily allow for other methods for generating networks.

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
|Topology & Function|Parameters|
|---|---|
|[Erdos-Renyi](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.random_graphs.erdos_renyi_graph.html#networkx.generators.random_graphs.erdos_renyi_graph)<br>`erdosrenyi(n,p,directed=false)`|<ul><li>*n* (int) - Number of nodes </li><li>*p* (double) - Probability for edge creation </li><li>*directed* (boolean)</li></ul>|
|[random geometric](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.geometric.random_geometric_graph.html#networkx.generators.geometric.random_geometric_graph)<br>`randomgeometric(n,radius,dim=2,pos=None)`|<ul><li>*n* (int) - Number of nodes</li><li>*radius* (float) - Distance threshold value</li><li>*dim* (int) - Dimension of graph</li><li>*pos* (float) Position of nodes, m-by-dim matrix</li></ul>|
|[Watts-Strogatz](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.random_graphs.watts_strogatz_graph.html#networkx.generators.random_graphs.watts_strogatz_graph)<br>`wattsstrogatz(n,k,p)`|<ul><li>*n* (int) - Number of nodes</li><li>*k* (int) - Each node is joined with its k nearest neighbors in a ring topology</li><li>*p* (float) - The probability of rewiring each edge</li></ul>|
|[Scale-free](https://networkx.github.io/documentation/stable/reference/generated/networkx.generators.directed.scale_free_graph.html#networkx.generators.directed.scale_free_graph)<br>`scalefree(n,alpha=0.41,beta=0.54,gamma=0.05,delta_in=0.2,delta_out=0)`|<ul><li>*n* (integer) – Number of nodes</li><li>*alpha* (float) – Probability for adding a new node connected to an existing node chosen randomly according to the in-degree distribution. (not yet supported)</li><li>*beta* (float) – Probability for adding an edge between two existing nodes. (not yet supported)</li><li>*gamma* (float) – Probability for adding a new node connected to an existing node chosen randomly according to the out-degree distribution. (not yet supported)</li></ul>|
|[Modular](https://arxiv.org/pdf/1706.05117.pdf)<br>`modular(n,k,m,p=0.8)`|<ul><li>*n* (int) - Number of nodes</li><li>*k* (int) - Desired number of edges</li><li>*m* (int) - Number of modules</li><li>*p* (float, default=0.8) - Desired fraction of k within modules</li></ul>|

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

