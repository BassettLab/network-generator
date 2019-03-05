function network = generate(varargin)
%GENERATE
%   returns a struct with adjacency matrix in 'A' and other parameters
%   See README for usage
network = struct;
for pair = reshape(varargin,2,[])
    network.(lower(pair{1})) = pair{2};
end
network.A = feval(['net.generators.' network.topology], network);
end

