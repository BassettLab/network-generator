function d = modular(p)
%Modular
%   parameters
%       n (int) The number of nodes
%       k (int) desired number of edges
%       m (int) number of modules
%       p (float; default=0.8)
%           desired fraction of k within modules
%       dir (boolean; default=false)
if ~isfield(p,'p'); p.p = 0.8; end
if ~isfield(p,'dir'); p.dir = false; end
A1 = net.imported.modular_network(p.n, p.k, p.m, p.p);
if p.dir
    A2 = net.imported.modular_network(p.n, p.k, p.m, p.p);
    d.A = triu(A1) + diag(A1) + triu(A2)';
else
    d.A = A1;
end
end
