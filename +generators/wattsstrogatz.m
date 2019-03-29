function d = wattsstrogatz(p)
%Watts-Strogatz, symmetric
%   parameters
%       n (int) The number of nodes
%       k (int) Each node is joined with its k nearest neighbors in
%           a ring topology
%       p (float) The probability of rewiring each edge
%       dir (boolean)
if ~isfield(p,'dir'); p.dir = false; end
py.importlib.import_module('networkx');
A1 = net.helper.py_graph2adjmat(...
    py.networkx.watts_strogatz_graph(int16(p.n), int16(p.k), p.p));
if p.dir
    A2 = net.helper.py_graph2adjmat(...
        py.networkx.watts_strogatz_graph(int16(p.n), int16(p.k), p.p));
    d.A = A1 + A2' - A1.*eye(size(A1));;
else
    d.A = A1 + A1' - A1.*eye(size(A1));
end
end
