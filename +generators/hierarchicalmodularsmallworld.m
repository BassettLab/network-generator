function A = hierarchicalmodularsmallworld(p)
%Hierarchical modular small-world network
%   parameters
%       mx_lvl (int) number of hierarchical levels, N = 2^mx_lvl
%       e (float) connection density fall-off per level
%       sz_cl (int) size of clusters (power of 2)
A = net.imported.makefractalCIJ(p.mx_lvl, p.e, p.sz_cl);
end

