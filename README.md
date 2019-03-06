# network-generator
MATLAB package to generate networks.

For some standard networks, it uses [Python's](https://www.python.org/) [networkx](https://networkx.github.io/) library for standard network generation. For other networks, it borrows code from other sources (e.g., [Ann's website](https://sites.google.com/a/seas.upenn.edu/weighted-network-toolbox) and the [Brain Connectivity Toolbox](https://sites.google.com/site/bctnet)). You can also easily add other methods for generating networks.

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

For topologies and their parameters, see [API](+generators/README.md).
* [Erdos-Renyi network](+generators/README.md#erdosrenyi)
* [Weighted random network](+generators/README.md#weightedrandom)
* [Random geometric network](+generators/README.md#randomgeometric)
* [Watts-Strogatz network](+generators/README.md#wattsstrogatz)
* [Scale-free network](+generators/README.md#scalefree)
* [Modular network](+generators/README.md#modular)
* [Modular small-world network](+generators/README.md#modularsmallworld)
* [Hierarchical modular small-world network](+generators/README.md#hierarchicalmodularsmallworld)
* [Generative network](+generators/README.md#generative)

### Adding topology generators

1. Write a function that generates a topology. Add to the `+generators` directory. See examples in `+generators`. Add any auxiliaury code in `+imported`.
2. Update `+generators/README.md`.

## Troubleshooting
1. If your MATLAB can't find [networkx](https://networkx.github.io/), then see [this](https://erikreinertsen.com/python3-in-matlab/).

## To-do
Add additional topologies:
1. Directed versions of topologies
2. Generative growth model
3. Graphical lasso with data

