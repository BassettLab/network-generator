function A = weightedrandom(p)
%weightedrandom, symmetric
%   parameters
%       n (int) number of nodes
%       p (int) probability of edge/weight addition
A = net.imported.Weighted_Random_Graph(p.n,p.p);
end

