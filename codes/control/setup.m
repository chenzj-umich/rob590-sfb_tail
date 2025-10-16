clc; clear; close all;

addpath(genpath('robots'))
addpath(genpath('utils'))
addpath(genpath('spatial_v2_extended'))
addpath(genpath('casadi-3'))

try
    import casadi.*
    x = MX.sym('x');
catch
    error('CasADi not found. Please follow https://web.casadi.org/get/ to install CasADi.');
end

disp("Setup Success!")
