function A = erdosrenyi(params)
%erdosrenyi
%   parameters
%       n (int)
%       p (float; 0 <= p <= 1)
%       directed (bool)
py.importlib.import_module('networkx');
g = py.networkx.erdos_renyi_graph(int16(params.n), params.p,...
    pyargs('directed',params.directed));
A = net.helper.py_graph2adjmat(g);
end

