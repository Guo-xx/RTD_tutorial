function k = get_k_from_w_and_v(FRS,w,v)
% k = get_k_from_w_and_v(FRS,w,v)
%
% Given an FRS struct output from computing the Turtlebot FRS, and values
% of angular and linear velocity w and v, return the corresponding k \in K
%
% Author: Shreyas Kousik
% Created: 26 Oct 2019
% Updated: 28 Oct 2019

    % allocate
    k = nan(2,1) ;
    
    % get k_1
    k(1) = w / FRS.w_max ;
    
    % get k_2
    k(2) = (2/diff(FRS.v_range)).*(v - mean(FRS.v_range)) ;
end