function network = generate(varargin)
%GENERATE
%   returns a struct with adjacency matrix in 'A' and other parameters
%   See README for usage
network = struct(...
    'A', [],...
    'topology', ''...
    );
for pair = reshape(varargin,2,[])
    network.(lower(pair{1})) = pair{2};
end
switch network.topology
    case 'erdosrenyi'
        network.A = net.generators.erdosrenyi(network);
    case 'wattsstrogatz'
        network.A = net.generators.wattsstrogatz(network);
    case 'randomgeometric'
        network.A = net.generators.randomgeometric(network);
    otherwise
        error(['Topology ' network.topology ' undefined.'])
end
end

