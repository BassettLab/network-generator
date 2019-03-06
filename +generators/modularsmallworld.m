function A = modularsmallworld(p)
%Modular small-world network
%   parameters
%       n (int) number of vertices (must be power of 2)
%       k (int) number of edges
%       sz_cl (int) size of clusters (power of 2)
A = net.imported.makeevenCIJ(p.n, p.k, p.sz_cl);
end

