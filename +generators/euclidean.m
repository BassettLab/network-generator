function d = euclidean(p)
%Euclidean distance
%   parameters
%       x (float) vector of position in x-axis <br>
%       y (float) vector of position in y-axis <br>
%       z (float, default=0) vector of position in z-axis
if ~isfield(p,'z'); p.z = zeros(size(p.x)); end
d.A = sqrt((p.x-p.x').^2+(p.y-p.y').^2+(p.z-p.z').^2);
end
