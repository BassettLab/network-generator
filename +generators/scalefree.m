function A = scalefree(params)
%Scale-free directed graph
%   parameters
%       n (integer) ? Number of nodes in graph
%       alpha (float) ? Probability for adding a new node connected 
%           to an existing node chosen randomly according 
%           to the in-degree distribution.
%       beta (float) ? Probability for adding an edge between 
%           two existing nodes. One existing node is chosen 
%           randomly according the in-degree distribution and the other 
%           chosen randomly according to the out-degree distribution.
%       gamma (float) ? Probability for adding a new node 
%           connected to an existing node chosen randomly 
%           according to the out-degree distribution.
%       delta_in (float) ? Bias for choosing ndoes from
%           in-degree distribution.
%       delta_out (float) ? Bias for choosing ndoes from 
%           out-degree distribution.
py.importlib.import_module('networkx');
g = py.networkx.scale_free_graph(int16(params.n));
A = net.helper.py_graph2adjmat(g);
end