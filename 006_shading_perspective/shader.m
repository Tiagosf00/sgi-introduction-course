function shader(t)
% SHADER Applies a default shading choice for the surface t plotted
%   in the current figure
%
%   Input:
%       t : surface to be shaded

    shading interp;
    axis equal;
    axis off;
    colorbar;
    colormap(cbrewer('Blues', 1000));
    light('Position', [-1.5, 1, 1], 'Style', 'local');
    lights = camlight;
    set(t, 'FaceLighting', 'gouraud', 'FaceColor', 'interp');
    set(t, ...
        'DiffuseStrength', 0.6, ...
        'SpecularStrength', 0.1, ...
        'AmbientStrength', 0.5 ...
    );
    camproj('perspective');
%     add_shadow(t, lights);
end