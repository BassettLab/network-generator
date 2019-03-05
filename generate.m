function network = generate(varargin)
%GENERATE
%   returns a struct with adjacency matrix in 'A' and other parameters
%   See README for usage
network = struct(...
    'A', [],...
    'topology', 'erdosrenyi',...
    'directed',false,...
    'seed',1 ...
    );
for pair = reshape(varargin,2,[])
    network.(lower(pair{1})) = pair{2};
end
switch network.topology
    case 'erdosrenyi'
        network.A = net.generators.erdosrenyi(network);
    otherwise
        error(['Topology ' network.topology ' undefined.'])
end
end

