function O = my_outline(F)
% MY_OUTLINE Find the boundary edges of a triangle mesh
%
%   [O] = my_outline(F)
% 
%   Input:
%       F : face list of indices
%   Output:
%       O : list of boundary edges
    
    % Build all the edges
    A = sparse(F, F(:, [2:end, 1]), 1);
    % Remove edges that show up twice (x->y and y->x)
    [OI, OJ, OV] = find(A - A');
    O = [OI(OV > 0), OJ(OV > 0)];
    
end
