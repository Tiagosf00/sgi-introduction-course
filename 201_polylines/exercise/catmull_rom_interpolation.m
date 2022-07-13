function Pt = catmull_rom_interpolation(P, t)
% P is a set of points, which we assume are corresponded to equally spaced
% times between 0 and 1. t is a scalar value between 0 and 1. Return the
% value of the catmull-rom interpolation of P at time t. You may use
% cubic_hermite.m, 

    M = estimate_derivatives_catmull_rom(P);

    if (t == 1)
        t = 0;
    end

    n = size(P, 1);
    w = 1 / n;
    id = floor(t / w) + 1; id1 = mod(id, n) + 1;

    P0 = P(id, :); P1 = P(id1, :);
    M0 = M(id, :); M1 = M(id1, :);
    tn = (t - (id-1) * w) / w;

    Pt = cubic_hermite(P0, P1, M0, M1, tn);

end