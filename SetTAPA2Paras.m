Coupled = 1;
TwoCarriers = 1;
RC = 1;

nx = 201;
l = 1e-6;

x =linspace(0,l,nx);
dx = x(2)-x(1);
xm = x(1:nx-1) + 0.5*dx;

Nd = 1e16 * 1e6; % Const. 1/cm3 (100 cm/m)^3
NetDoping = Nd.*exp(-1e6*x); % doping

x0 = l/2;
nw = l/20;
npDisturbance = 1e16*1e6*exp(-((x-x0)/nw).^2);

LVbc = 0;
RVbc = 0;

TStop = 14200000*1e-18;
PlDelt = 100000*1e-18;

PlotYAxis = {[-10e-3 5e-3] [-20e4 0e4] [-500 500]...
    [5e21 10e21] [5e20 15e20] [0 10e42]...
    [-5e31 15e31] [-5e31 5e31] [-3e7 0] ...
    [-2e9 2e9] [-10e-3 10e-3] [0 2e22]};

doPlotImage = 0;
PlotFile = 'Gau2CarRC.gif';
