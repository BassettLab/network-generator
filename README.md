# network-generator
MATLAB package to generate networks.

It uses [Python's](https://www.python.org/) [networkx](https://networkx.github.io/) library for standard network generation, but can easily allow for other methods for generating networks.

## Installation
Make sure you have [python](https://www.python.org/downloads/) and [networkx](https://networkx.github.io/) installed.

Clone `network-generator` to your MATLAB environment.

## Example
```
n = net.generate('topology','erdosrenyi',...
  'n',20,'p',0.3,'directed',true);
imagesc(n.A)
```

## Available network topologies
|Topology| |
|---|---|
|Erdos-Renyi|<ul><li>*n* (int) number of nodes </li><li>*p* (double) probability </li><li>*directed* (boolean)</li></ul>|

## Troubleshooting
1. If your MATLAB can't find [networkx](https://networkx.github.io/), then see [this](https://erikreinertsen.com/python3-in-matlab/).
