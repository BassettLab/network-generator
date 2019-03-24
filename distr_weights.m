function w = distr_weights(A,wd,varargin)
%distr_weights Distribute weights
%   A (float; matrix) connectivity matrix, col j -> row i
%   wd (string) weight distribution
%   returns a struct with a weighted A and parameters
%   See README for usage
w.distribution = wd;
for pair = reshape(varargin,2,[])
    w.(lower(pair{1})) = pair{2};
end
w.A = double(A);
w.A(w.A>0) = feval(['net.weights.' wd], w);
end
