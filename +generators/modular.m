function d = modular(p)
%Modular
%   parameters
%       n (int) The number of nodes
%       k (int) desired number of edges
%       m (int) number of modules
%       p (float; optional, default=0.8)
%           desired fraction of k within modules
%       directed (boolean; optional, default=false) not yet supported
if ~isfield(p,'p'); p.p = 0.8; end
if ~isfield(p,'directed'); p.directed = false; end
d.A = net.imported.modular_network(p.n, p.k, p.m, p.p);
end

