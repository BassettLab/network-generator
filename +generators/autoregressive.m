function A = autoregressive(p)
%arfit(p) multivariate autoregressive model
%   parameters
%       v (float, n-by-m) time series with m variables & n observations
%       pmin (int) pmin <= p <= pmax for order parameter p
%       pmax (int)
%       selector (string, default='sbc') order selection criteria
%           'sbc' Schwarz's Bayesian Criterion
%           'fpe' Akaike's Final Prediction Error criterion
%       no_const (string, default=none)
%           if 'zero, constant bias term is set to 0
if isfield(p, 'selector') && isfield(p, 'no_const')
    [w,A,c,sbc,fpe,th] = net.imported.arfit.arfit(...
        p.v, p.pmin, p.pmax, p.selector, p.no_const);
elseif isfield(p, 'selector')
    [w,A,c,sbc,fpe,th] = net.imported.arfit.arfit(...
        p.v, p.pmin, p.pmax, p.selector);
elseif isfield(p, 'no_const')
    [w,A,c,sbc,fpe,th] = net.imported.arfit.arfit(...
        p.v, p.pmin, p.pmax, p.no_const);
else
    [w,A,c,sbc,fpe,th] = net.imported.arfit.arfit(p.v, p.pmin, p.pmax);
end
end

