% fig C11
% initialising parameters

A=100; M=1; T=1; Cz=0.9; Cp=0; beta1=1; beta2=1; lambda21=0; lambda12=0; mu=0.0005; delta=0.005; NEVOL=3000; f0=0.002; m0=0.6; alpha0=0.5; 
switching_environments=0; return_traits=1; number_of_realisations=1; alphamax=1000;

cd ..
cd ..
addpath(genpath('Simulation_Functions'))
cd Data_generation_scripts/FigC11

[genotypeDATA_m,genotypeDATA_alpha,m,alpha]=Evolutionary_trajectories(number_of_realisations,m0,alpha0,A,M,T,Cz,Cp,beta1,beta2,lambda12,lambda21,mu,NEVOL,f0,delta,alphamax, switching_environments, return_traits );


cd ..
cd ..


save('Data_files\FigC11\m.mat','m');
save('Data_files\FigC11\alpha.mat','alpha');
save('Data_files\FigC11\genotypeDATA_m.mat','genotypeDATA_m');
save('Data_files\FigC11\genotypeDATA_alpha.mat','genotypeDATA_alpha');