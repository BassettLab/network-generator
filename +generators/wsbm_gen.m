function d = wsbm_gen(p)
% wsbm_gen(p) generates synthetic data sets from the WSBM.
%   parameters p
%   Inputs:
%       e_truth - Distr Struct or Distr Name              (see setup_distr)
%       e_truth - a *discrete* Distr Struct or Distr Name (see setup_distr)
%       r       - a kxk matrix linking pairs of groups to edge bundles
%       theta_w   - rxd mat of parameters for each weight distr
%       theta_e   - rxd mat of parameters for each edge distr
%       group_sizes - kx1 vec of group/block sizes (sum is n)
%       degree_para - nx2 vec or mean in- and out- degrees (DC models only)
%
%   Outputs:
%       edge_list - mx3 mat of Raw_Data values 
%   	true_model - a struct containing: Data,W_Distr,E_Distr,R_Struct,Para 

if isfield(p, 'degree_para') % for the degree corrected variant
    % probability distribution for weights
    w = net.imported.wsbm.setup_distr(p.w_truth); 
    % probability distribution for edges 
    e = net.imported.wsbm.setup_distr(p.e_truth); 
    r = p.r; 
    % parameters for weight distribution, e.g. mu and sigma for the normal
    % distribution
    theta_w = p.theta_w; 
    % parameters for edge distribution, e.g. probability of edge existence
    % for the Bernoulli distribution
    theta_e = p.theta_e; 
    group_sizes = p.group_sizes;
    degree_para = p.degree_para;
    [edge_list, d.true_model] = ... 
        net.imported.wsbm.generateEdges(w,e,r,...
        theta_w,theta_e,group_sizes,degree_para);
    d.A = net.imported.wsbm.Edg2Adj(edge_list);
else
    % probability distribution for weights
    w = net.imported.wsbm.setup_distr(p.w_truth); 
    % probability distribution for edges 
    e = net.imported.wsbm.setup_distr(p.e_truth);
    r = p.r; 
    % parameters for weight distribution, e.g. mu and sigma for the normal
    % distribution
    theta_w = p.theta_w; 
    % parameters for edge distribution, e.g. probability of edge existence
    % for the Bernoulli distribution
    theta_e = p.theta_e; 
    group_sizes = p.group_sizes;
    [edge_list, d.true_model] = ... 
        net.imported.wsbm.generateEdges(w,e,r,...
        theta_w,theta_e,group_sizes);
    d.A = net.imported.wsbm.Edg2Adj(edge_list);
end

end

