function A = random(p)
%Random network
%   parameters
%       n (int) number of nodes
%       k (int) number of edges
%       directed (boolean, default=false)
if ~isfield(p,'directed'); p.directed = false; end
if p.directed
  A = net.imported.makerandCIJ_dir(p.n,p.k);
else
  A = net.imported.makerandCIJ_und(p.n,p.k);
end
end