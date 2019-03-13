function d = randomgeometric(p)
%Random geometric
%   parameters
%       n (int) The number of nodes
%       radius (float) Distance threshold value
%       dim (int, optional) Default: 2
%       pos (matrix, optional) Position of nodes, m-by-dim matrix
%           Converted to Python dictionary keyed by node with node 
%           positions as values
if ~isfield(p,'dim'); p.dim = 2; end
if ~isfield(p,'pos')
    args = pyargs('dim',int16(p.dim));
else
    d = py.dict;
    for i = 1 : size(p.pos)
        d{int16(i-1)} = py.tuple(int16(p.pos(i,:)-1));
    end
    args = pyargs('dim',int16(p.dim),'pos',d);
end
py.importlib.import_module('networkx');
g = py.networkx.random_geometric_graph(int16(p.n), p.radius, args);
d.A = net.helper.py_graph2adjmat(g);
d.A = d.A + d.A' - d.A.*eye(size(d.A));
end