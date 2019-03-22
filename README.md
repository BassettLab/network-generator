# network-generator
MATLAB package to generate synthetic and empirical networks.

For some standard networks, it uses [Python's](https://www.python.org/) [networkx](https://networkx.github.io/) library for standard network generation. For other networks, it borrows code from other sources (e.g., [Ann's website](https://sites.google.com/a/seas.upenn.edu/weighted-network-toolbox) and the [Brain Connectivity Toolbox](https://sites.google.com/site/bctnet)). You can also easily add other methods for generating networks.

## Installation
Clone `network-generator` to your MATLAB environment. **Rename directory to `+net`.** No need to add to path.

You need [python](https://www.python.org/downloads/) and [networkx](https://networkx.github.io/) installed for some topologies (see [API](+generators/README.md)).

## Use
Call `net.generate()`, and specify the topology and any other parameters in name-value pairs (à la `plot`). For example,
```
n = net.generate('erdosrenyi',...
  'n',20,...
  'p',0.3,...
  'directed',true);
imagesc(n.A)
```

## Available network topologies

For topologies and their parameters, see [API](+generators/README.md).
* [Erdos-Renyi network](+generators/README.md#erdosrenyi)
* [Random network](+generators/README.md#random)
* [Weighted random network](+generators/README.md#weightedrandom)
* [Random geometric network](+generators/README.md#randomgeometric)
* [Watts-Strogatz network](+generators/README.md#wattsstrogatz)
* [Scale-free network](+generators/README.md#scalefree)
* [Modular network](+generators/README.md#modular)
* [Modular small-world network](+generators/README.md#modularsmallworld)
* [Hierarchical modular small-world network](+generators/README.md#hiermodsmallworld)
* [Generative growth network](+generators/README.md#generative)
* [Multivariate autoregressive model](+generators/README.md#autoregressive)
* [Euclidean distance](+generators/README.md#euclidean)
* [Graphical lasso](+generators/README.md#graphicallasso)

#### BYO topologies

1. Write a function that generates a topology, and add to the `+generators` directory (see examples [there](+generators)). Add any auxiliaury code in `+imported`.
2. Update `+generators/README.md`.
3. Submit a [pull request](https://www.atlassian.com/git/tutorials/making-a-pull-request) if you want to share your code.

## Troubleshooting
1. If your MATLAB can't find [networkx](https://networkx.github.io/), then see [this](https://erikreinertsen.com/python3-in-matlab/).

## To-do
1. Directed versions of topologies
2. Network weighting
3. Graphical lasso from data
