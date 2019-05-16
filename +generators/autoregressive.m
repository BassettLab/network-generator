function d = autoregressive(p)
%arfit(p) multivariate autoregressive model
%   parameters p
%       v (float, n-by-m) time series with m variables & n observations
%       pmin (int) pmin <= p <= pmax for order parameter p
%       pmax (int)
%       selector (string, default='sbc') order selection criteria
%           'sbc' Schwarz's Bayesian Criterion
%           'fpe' Akaike's Final Prediction Error criterion
%       no_const (string, default=none)
%           if 'zero, constant bias term is set to 0
%   returns d
%           model: v(t) = w + sum_{l=1}^p[A_l*v(t-l)] + e
%       A (m-by-m-by-p) coefficients
%       w (m-by-1) intercepts
%       c (m-by-m) e = noise(C)...
%       sbc (1-by-p) order selection criterion
%       fpe (1-by-p)
%       th
if isfield(p, 'selector') && isfield(p, 'no_const')
    [d.w, A, d.c, d.sbc, d.fpe, d.th] = net.imported.arfit.arfit(...
        p.v, p.pmin, p.pmax, p.selector, p.no_const);
elseif isfield(p, 'selector')
    [d.w, A, d.c, d.sbc, d.fpe, d.th] = net.imported.arfit.arfit(...
        p.v, p.pmin, p.pmax, p.selector);
elseif isfield(p, 'no_const')
    [d.w, A, d.c, d.sbc, d.fpe, d.th] = net.imported.arfit.arfit(...
        p.v, p.pmin, p.pmax, p.no_const);
else
    [d.w, A, d.c, d.sbc, d.fpe, d.th] = net.imported.arfit.arfit(...
        p.v, p.pmin, p.pmax);
end
m = size(A,1);
p = size(A,2);
d.A = zeros(m,m,p/m);
for i = 1 : p/m
    d.A(:,:,i) = A(:, (i-1)*m+1 : i*m );
end
d.Asum = sum(d.A,3);
end

