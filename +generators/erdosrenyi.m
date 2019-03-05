function A = erdosrenyi(p)
%Erdos-Renyi
%   parameters
%       n (int) The number of nodes
%       p (float; 0 <= p <= 1) Probability for edge creation.
%       directed (bool; optional, default=false)
if ~isfield(p,'directed')
    p.directed = false;
end
py.importlib.import_module('networkx');
g = py.networkx.erdos_renyi_graph(int16(p.n), p.p, ...
    pyargs('directed',p.directed));
A = net.helper.py_graph2adjmat(g);
if ~p.directed
    A = A + A' - A.*eye(size(A));
end
end

