function adjmat = py_graph2adjmat(g)
%UNTITLED2 
%   g: Python networkx graph
% returns
%   adjmat: adjacency matrix from g
nodes = cell(py.list(g.nodes));
sources = py.list(g.adj);
adjmat = zeros(length(nodes));
for i = 1 : length(nodes)
    s = double(sources{i});
    ts = cellfun(@double,cell(py.list(g.adj{s})));
    for j = 1 : length(ts)
        val = g.adj{s}{ts(j)};
        val = cellfun(@double,cell(py.list(val))) + 1;
        val(isempty(val)) = 1;
        adjmat(ts(j)+1,s+1) = val;
    end
end
end

