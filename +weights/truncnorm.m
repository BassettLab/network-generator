function x = truncnorm(w)
%truncnorm Truncated normal distribution
%   mu (float) mean
%   sigma (float) variance
%   range (float) [min max]
d = makedist('Normal',w.mu,w.sigma);
d = truncate(d,w.range(1),w.range(2));
x = random(d,[1 nnz(w.A)]);
end
