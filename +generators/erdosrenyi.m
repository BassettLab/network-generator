function A = erdosrenyi(p)
%Erdos-Renyi
%   parameters
%       n (int) The number of nodes
%       p (float; 0 <= p <= 1) Probability for edge creation.
%       directed (bool)
py.importlib.import_module('networkx');
g = py.networkx.erdos_renyi_graph(int16(p.n), p.p, ...
    pyargs('directed',p.directed));
A = net.helper.py_graph2adjmat(g);
end

