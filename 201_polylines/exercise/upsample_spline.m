function U = upsample_spline(V, n)
% Sample n equally spaced points on the Catmull-Rom spline defined by V

    U = [];
    t = linspace(0, 1, n);
    t(end) = 0;
    for i = 1:length(t)
        U = [U; catmull_rom_interpolation(V, t(i))];

end