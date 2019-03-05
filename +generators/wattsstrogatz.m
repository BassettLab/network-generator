function A = wattsstrogatz(p)
%Watts-Strogatz, symmetric
%   parameters
%       n (int) The number of nodes
%       k (int) Each node is joined with its k nearest neighbors in
%           a ring topology
%       p (float) The probability of rewiring each edge
py.importlib.import_module('networkx');
g = py.networkx.watts_strogatz_graph(int16(p.n), int16(p.k), p.p);
A = net.helper.py_graph2adjmat(g);
A = A + A' - A.*eye(size(A));
end

