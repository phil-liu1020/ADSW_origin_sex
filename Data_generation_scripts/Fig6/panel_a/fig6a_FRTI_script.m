% fig 6a
% initialising parameters

A=100; M=10; T=0.1; Cz=0.35; Cp=0; beta1=3; beta2=0.01; lambda21=67/532; lambda12=1/4; mu=0.00035; delta=0.007; NEVOL=3500; f0=0.002; m0=2; alpha0=0.4; 
switching_environments=1; return_genotypes=0; number_of_realisations=25; alphamax=1000;

cd ..
cd ..
cd ..

addpath('Simulation_Functions')

cd Data_generation_scripts/Fig6/panel_a

[~,~,m,alpha]=Evolutionary_trajectories(number_of_realisations,m0,alpha0,A,M,T,Cz,Cp,beta1,beta2,lambda12,lambda21,mu,NEVOL,f0,delta,alphamax, switching_environments, return_genotypes );


cd ..

cd ..

cd ..

save('Data_files\Fig6\panel_a\m_FRTI.mat','m');
save('Data_files\Fig6\panel_a\alpha_FRTI.mat','alpha');
