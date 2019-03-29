function d = random(p)
%Random network
%   parameters
%       n (int) number of nodes
%       k (int) number of edges
%       dir (boolean, default=false) directed graph
if ~isfield(p,'dir'); p.dir = false; end
if p.dir
  d.A = net.imported.makerandCIJ_dir(p.n,p.k);
else
  d.A = net.imported.makerandCIJ_und(p.n,p.k);
end
end
