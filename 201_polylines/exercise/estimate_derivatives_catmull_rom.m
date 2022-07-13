function M = estimate_derivatives_catmull_rom(P)
% Assuming P are the points of a closed curve, use the Catmull-Rom
% technique to estimate the derivative at each point of P by looking at its
% neighbors

    n = length(P);
    for i = 2:n-1
        M(i, :) = 0.5 * (P(i+1, :) - P(i-1, :));
    M(1, :) = 0.5 * (P(2, :) - P(n, :));
    M(n, :) = 0.5 * (P(1, :) - P(n-1, :));

end