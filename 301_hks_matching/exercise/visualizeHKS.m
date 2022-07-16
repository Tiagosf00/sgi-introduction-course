% visualizeHKS
clear all; close all; clc;

% gptoolbox_path = ''; % complete
% addpath(genpath(gptoolbox_path));

data_folder = '../data/';
meshes = dir([data_folder,'*.o*']); % a list of all the meshes in the data folder
meshes = {meshes.name}; % access each mesh name by meshes{i}

cam_folder = [data_folder, 'cams/'];
cams = dir([cam_folder,'*.mat']); % a list of all the cam in the cams folder
cams = {cams.name};

addpath(data_folder); addpath(cam_folder);


%% Compute the HKS using gptoolbox

[V, F] = readOFF(meshes{12});

[K,MK,data] = hks(V,F);


%% Display the HKS on a few meshes for a small fixed time t.

% tsurf(F, V, 'CData', K(:, 1)); axis equal; shading interp;

tsurf(F,V,'CData',sqrt(sum(((K-K(1,:))./MK).^2,2)),fphong);
axis equal; shading interp;
colormap(cbrewer('RdBu', 500));