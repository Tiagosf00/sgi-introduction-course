function [V,F] = my_very_own_mesh()
% MY_VERY_OWN_MESH  construct my very own triangle mesh
%
%   [V, F] = my_very_own_mesh();
%
%   Output:
%       V, F : a triangle mesh for which creativity knows no bounds

V = [
    0, 0, 0;
    4, 0, 0;
    4, 4, 0;
    0, 4, 0;
    0, 0, 1;
    4, 0, 1;
    4, 4, 1;
    0, 4, 1;
    1, 1, 2;
    3, 1, 2;
    3, 3, 2;
    1, 3, 2;
];

F = [
    2, 4, 1;
    2, 3, 4;

    1, 2, 6;
    1, 6, 5;
    2, 3, 7;
    2, 7, 6;
    3, 4, 8;
    3, 8, 7;
    4, 1, 5;
    4, 5, 8;

    5, 10, 9;
    5, 6, 10;
    6, 11, 10;
    6, 7, 11;
    7, 12, 11;
    7, 8, 12;
    8, 9, 12;
    8, 5, 9;

    10, 12, 9;
    10, 11, 12;
];

end

