%% Harmonic Inpainting
clear
close all
clc
% create the corrupted image with the mask
cleanfilename = 'tp.jpg';
maskfilename  = 'mask.png';
[u,mask]      = create_image_and_mask(cleanfilename,maskfilename);
imwrite(u,'harmonic_input.png')
% parameters
lambda        = 10;
tol           = 1e-5;
maxiter       = 500;
dt            = 0.1;
% inpainting
tic
inpainting_harmonic(u,mask,lambda,tol,maxiter,dt);
toc
