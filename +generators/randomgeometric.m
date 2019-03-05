function A = randomgeometric(params)
%Random geometric
%   parameters
%       n (int) The number of nodes
%       radius (float) Distance threshold value
%       dim (int, optional) Default: 2
%       pos (dict, optional) NOT SUPPORTED
%           A dictionary keyed by node with node positions as values
%           Default: 
if ~isfield(params,'dim')
    params.dim = 2;
end
% if ~isfield(params,'pos')
%     params.pos = py.dict(pyargs(int16(1),py.tuple({0,1})));
% end
py.importlib.import_module('networkx');
g = py.networkx.random_geometric_graph(int16(params.n),...
    params.radius,...
    pyargs('dim',int16(params.dim)));
A = net.helper.py_graph2adjmat(g);
end