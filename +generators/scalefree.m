function d = scalefree(p)
%Scale-free directed graph
%   parameters
%       n (integer) Number of nodes in graph
%       alpha (float, default=0.41)
%           Probability for adding a new node connected to an 
%           existing node chosen randomly according to the in-degree 
%           distribution.
%       beta (float, default=0.54)
%           Probability for adding an edge between two existing 
%           nodes. One existing node is chosen randomly according the 
%           in-degree distribution and the other chosen randomly according 
%           to the out-degree distribution.
%       gamma (float, default=0.05) Probability for adding a new node 
%           connected to an existing node chosen randomly according to the 
%           out-degree distribution.
%       delta_in (float, default=0.2) Bias for choosing ndoes from 
%           in-degree distribution.
%       delta_out (float, default=0.0) Bias for choosing ndoes from 
%           out-degree distribution.
if ~isfield(p,'alpha');     p.alpha = 0.41; end
if ~isfield(p,'beta');      p.beta = 0.54; end
if ~isfield(p,'gamma');     p.gamma = 0.05; end
if ~isfield(p,'delta_in');  p.delta_in = 0.2; end
if ~isfield(p,'delta_out'); p.delta_out = 0.0; end
py.importlib.import_module('networkx');
g = py.networkx.scale_free_graph(int16(p.n),pyargs(...
    'alpha',p.alpha,'beta',p.beta,'gamma',p.gamma,'delta_in',p.delta_in,...
    'delta_out',p.delta_out));
d.A = net.helper.py_graph2adjmat(g);
end