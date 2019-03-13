function d = generativegrowth(p)
%Generative growth model
%   Generates synthetic networks using the models described in the study
%       by Betzel et al (2016) in Neuroimage.
%       See +imported/generative_model for usage.
%   parameters
%       seed (int, n-by-n) binary network of seed connections
%       d (float, n-by-n) Euclidean distance/fiber length matrix
%       m (int) number of connections that should be present in
%           final synthetic network
%       modeltype (string) specifies the generative rule (see below)
%       modelvar (array of string wrapped in a cell) specifies whether the
%           generative rules are based on power-law or exponential
%           relationship ('powerlaw' or 'exponential')
%       params (either a vector in the case of the geometric model or
%           a matrix for all other models) parameters at which the
%           model should be evaluated
%       epsilon (float, default = 1e-5) the baseline probability of forming
%           a particular connection (should be a very small number)
%
%       modeltype
%       'sptl'          spatial model
%       'neighbors'     number of common neighbors
%       'matching'      matching index
%       'clu-avg'       average clustering coeff.
%       'clu-min'       minimum clustering coeff.
%       'clu-max'       maximum clustering coeff.
%       'clu-diff'      difference in clustering coeff.
%       'clu-prod'      product of clustering coeff.
%       'deg-avg'       average degree
%       'deg-min'       minimum degree
%       'deg-max'       maximum degree
%       'deg-diff'      difference in degree
%       'deg-prod'      product of degree
if ~isfield(p,'epsilon'); p.epsilon = 1e-5; end
edges = net.imported.generative_model(p.seed, p.d, p.m, p.modeltype,...
    p.modelvar, p.params, p.epsilon);
n = size(p.seed,1);
nparams = size(p.params,1);
d.A = zeros(n,n,nparams);
for i = 1 : nparams
    a = zeros(n); a(edges(:,i)) = 1; a = a + a';
    d.A(:,:,i) = a;
end
end
