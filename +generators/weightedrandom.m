function d = weightedrandom(p)
%weightedrandom, symmetric
%   parameters
%       n (int) number of nodes
%       p (int) probability of edge/weight addition
d.A = net.imported.Weighted_Random_Graph(p.n,p.p);
end

