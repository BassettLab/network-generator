function adjmat = py_graph2adjmat(g)
%py_graph2adjmat(g) 
%   g: Python networkx graph
% returns
%   adjmat: adjacency matrix from g
% NOTE
%   function throws out edge attributes
nodes = cell(py.list(g.nodes));
adjmat = zeros(length(nodes));
edges = cell(py.list(g.edges));
for i = 1 : length(edges)
    edge = cellfun(@double,cell(edges{i}));
    adjmat(edge(1)+1,edge(2)+1) = adjmat(edge(1)+1,edge(2)+1) + 1;
end
end
