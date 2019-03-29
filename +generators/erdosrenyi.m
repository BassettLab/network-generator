function d = erdosrenyi(p)
%Erdos-Renyi
%   parameters
%       n (int) The number of nodes
%       p (float; 0 <= p <= 1) Probability for edge creation.
%       dir (bool; optional, default=false)
if ~isfield(p,'dir'); p.dir = false; end
py.importlib.import_module('networkx');
g = py.networkx.erdos_renyi_graph(int16(p.n), p.p, ...
    pyargs('directed',p.dir));
d.A = net.helper.py_graph2adjmat(g);
if ~p.dir
    d.A = d.A + d.A' - d.A.*eye(size(d.A));
end
end
