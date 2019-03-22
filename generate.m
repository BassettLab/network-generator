function network = generate(topology,varargin)
%GENERATE
%   topology (string)
%   returns a struct with adjacency matrix in 'A' and other parameters
%   See README for usage
network.topology = topology;
for pair = reshape(varargin,2,[])
    network.(lower(pair{1})) = pair{2};
end
data = feval(['net.generators.' topology], network);
for field = fieldnames(data)'
    network.(field{1}) = data.(field{1});
end
end
