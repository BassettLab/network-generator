function [a,Kpossible] = modular_network(N,K,M,P)
% adapted from Wu Yan, 2018
% N = number of nodes;
% K = desired number of edges;
% M = number of modules; N/M should be an integer
% P = density on Kpossible (possible edges within modules)

if floor(N/M) ~= N/M
    error(['Error: `n=' num2str(N) '` should be a multiple of `m=' ...
        num2str(M) '`.'])
end

Sz = N/M;

V = bsxfun(@times,ones(Sz,M),1:M);
I = dummyvar(sort(V(:)));
D = I*I';

Nwithin = nnz(triu(D == 1,1));
Kpossible = min(K,Nwithin);
Kwithin = ceil(P*Kpossible);
Kbetween = K - Kwithin;

a = zeros(N);
indxwithin = find(triu(D,1));
indxbetween = find(triu(~D,1));

a(indxwithin(randperm(length(indxwithin),Kwithin))) = 1;
a(indxbetween(randperm(length(indxbetween),Kbetween))) = 1;
a = a + a';

adj = a;

for i = 1:N
    for j = 1+i:N
            
            if adj(i,j) ==0
                adj(j,i) = 0;
            end
            if adj(i,j)>0
                % Coin flipping
                if D(i,j) > 0  % Edge is within a module
                     
                    r = rand;
                    m =1;
                    while r<P
                        m = m+1;
                        r = rand;
                    end
                    adj(i,j) = m;
                    adj(j,i) = m;
                end

                if D(i,j) == 0  % Edge between modules
                       r = rand;
                       m =1;
                    while r<((1.0*Kbetween) / (1.0*K))
                        m = m+1;
                        r = rand;
                    end
                    adj(i,j) = m;
                    adj(j,i) = m;
                end
            end
    end
end

% Add noise
adjn = adj;    
for i =1:N
    for j = i+1:N
        if adjn(i,j)>0
        adjn(i,j) = adjn(i,j) + 10^(-7)*rand;
        adjn(j,i) = adjn(i,j);
        end
    end
end

a = adjn;