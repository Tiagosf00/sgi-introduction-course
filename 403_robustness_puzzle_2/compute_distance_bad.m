% Compute geodesic distance along the mesh
% [V,F] = readOBJ('data/spot_good.obj'); % this one will work
[V,F] = readOBJ('data/spot_bad.obj');  % but this one will not!

% Run the algorithm 
% (I promise nothing is wrong with this algorithm, the problem is the mesh)
dists = heat_geodesic(V,F,1);

% Plot the resulting function
t = tsurf(F,V, 'CData',dists);
shading interp;
axis equal;
axis off;
colorbar;
colormap(cbrewer('Blues', 1000));
light('Position', [-1.5, 1, 1], 'Style', 'local');
light('Position', [1.5, 3, -2], 'Style', 'local');
lights = camlight;
set(t, 'FaceLighting', 'gouraud', 'FaceColor', 'interp');
set(t, ...
    'DiffuseStrength', 0.6, ...
    'SpecularStrength', 0.1, ...
    'AmbientStrength', 0.5 ...
);
camproj('perspective');
apply_ambient_occlusion(t,'AddLights',false,'SoftLighting',false);