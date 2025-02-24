function N = my_normals(V,F)
% MY_NORMALS Compute *unnormalized* normals per face
%
% N = normals(V,F)
% N = normals(V,F,'ParameterName',ParameterValue, ...)
%
% Inputs:
%  V  #V x 3 matrix of vertex coordinates
%  F  #F x 3  matrix of indices of triangle corners
% Output:
%  N  #F x 3 list of face normals
  
    N = zeros(length(F), 3);
    for i = 1:length(F)
        N(i, :) = cross(V(F(i, 2), :) - V(F(i, 1), :), V(F(i, 3), :) - V(F(i, 1), :));
  
end