% fig5
% initialising parameters

number_of_realisations=1; m0=0.25; alpha0=0.02; A=100; M=1; T=1; Cz=(0:0.1:0.9); Cp=0.5; beta1=1; beta2=1; lambda12=0; lambda21=0; mu=0.001; NEVOL=6000; f0=0.02; delta=0.01; switching_environments=0; plasticity=0; return_genotypes=1; alphamax=1.3;
mgenotypesOvertime=cell(10,1); alphagenotypesOvertime=cell(10,1);

cd ..
cd ..

addpath(genpath('Simulation_Functions'))

cd Data_generation_scripts/Fig5



parfor i=1:10
[mgenotypesOvertime{i},alphagenotypesOvertime{i},~,~,~,~]=Evolutionary_trajectories(number_of_realisations,m0,alpha0,A,M,T,Cz(i),Cp,beta1,beta2,lambda12,lambda21,mu,NEVOL,f0,delta,alphamax, switching_environments, plasticity, return_genotypes );
end

for i=1:10
OogamyRatio(i)=min(alphagenotypesOvertime{i,1}{NEVOL-1,2})/max(alphagenotypesOvertime{i,1}{NEVOL-1,2});
end


cd ..
cd ..

save('Data_files\Fig5\OogamyRatio.mat','OogamyRatio');