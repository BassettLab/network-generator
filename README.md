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

For topologies and their parameters, see [API](+generators/API.md).

### Adding topology generators

1. Write a function that generates a topology. Add to the `+generators` directory. See examples in `+generators`. Add any auxiliaury code in `+imported`.
2. Update `+generators/README.md`.

## Troubleshooting
1. If your MATLAB can't find [networkx](https://networkx.github.io/), then see [this](https://erikreinertsen.com/python3-in-matlab/).

## To-do
Add additional topologies:
1. Directed versions of topologies
2. Generative growth model
3. Modular small-world networks
4. Hierarchical modular small-world networks
5. Graphical lasso with data

