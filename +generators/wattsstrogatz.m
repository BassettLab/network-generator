function A = wattsstrogatz(params)
%Watts-Strogatz
%   parameters
%       n (int) The number of nodes
%       k (int) Each node is joined with its k nearest neighbors in
%           a ring topology
%       p (float) The probability of rewiring each edge
py.importlib.import_module('networkx');
g = py.networkx.watts_strogatz_graph(int16(params.n),...
    int16(params.k),...
    params.p);
A = net.helper.py_graph2adjmat(g);
end

