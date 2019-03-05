function [adj,adjn] = Weighted_Random_Graph(nnodes,p)
% This function creates a network as described in Garlaschelli, Diego. 
% "The weighted random graph model." New Journal of Physics 11.7 (2009): 
% 073005.

% Inputs
    % nnodes = number of nodes
    % p = probability of success for edge weight determination process.
    
% Outputs
    % adj = adjacency matrix
    % adjn = adj + noise to ensure edge uniqueness.

% Reference: Ann Sizemore, Chad Giusti and Danielle S. Bassett,
% “Classification of weighted networks through mesoscale homological 
% features” (arXiv:1512.06457 [math.CO]) (submitted)


adj = zeros(nnodes,nnodes);


for i=1:nnodes
    for j=i+1:nnodes
        m = 0;
        r = rand;
       while r<=p;  % Coin flipping process. Add edge weight of 1 every 
                    % the random number is less than p.
          m = m+1;
          r =rand;
       end
       
       adj(i,j)=m;
       adj(j,i)=m; 
    end
end

% Add noise
adjn = adj;
for i = 1:nnodes
    for j = i+1:nnodes
        adjn(i,j) = adjn(i,j)+ 0.001*rand;
        adjn(j,i) = adjn(i,j);
    end
end




end

