% Instructions for producing FigS5 to FigS14.

% First, open "Data_Files", then open the folder for the figure you'd like to plot.
% Next, load any the .mat files in the folder you've opened.

% To reproduce any of the panels of a given figure, execute the command

cd ..
cd ..
addpath(genpath('ParthEvolOogamy-main'))
cd ParthEvolOogamy-main/Figure_generation_scripts

% To show branching in mass, execute
  
Evol_Branching_plots(genotypesData_m);

% To show branching in alpha, execute

figure

Evol_Branching_plots(genotypesData_alpha);

% To show branching in mass and alpha, execute

figure

Evol_Branching_plots_Coevolution(genotypesData_m,genotypesData_alpha);
