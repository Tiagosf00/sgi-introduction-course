function A = shuffle_by_1(A)
% SHUFFLE_BY_1 shuffle the columns of A to the right by one, such that the
%   new ith column is the old i-1th column, and the new 1st column is the
%   old last column.
%
%   A = shuffle_by_1(A);
%
%   Input:
%       A : a rectangular matrix
%   Output:
%       A : the input matrix with the rows shuffled to the right by 1

    A = [A(end), A(1:end-1)];
end
