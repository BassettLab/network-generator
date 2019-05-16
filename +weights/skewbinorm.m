function x = skewbinorm(w)
%truncnorm Skewed bimodal normal distribution
%   mus (float) 1x2, mean
%   sigma (float) covariance
%   props (float) 1x2 proportions
%   range (float) [min max]
d = gmdistribution(w.mus', w.sigma , w.props);
x = random(d,nnz(w.A));
end
