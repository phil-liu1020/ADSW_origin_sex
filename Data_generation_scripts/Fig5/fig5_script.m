% fig5
% initialising parameters

number_of_realisations=1; m0=0.25; alpha0=0.02; A=100; M=1; T=1; Cz=(0:0.1:0.9); Cp=0.5; beta1=1; beta2=1; lambda12=0; lambda21=0; mu=0.001; NEVOL=6000; f0=0.02; delta=0.01; switching_environments=0; plasticity=0; return_genotypes=1;

cd ..
cd ..

addpath(genpath('Simulation_Functions'))

cd Data_generation_scripts/Fig5



parfor i=1:10
[genotypeData_m(i,:),genotypeData_alpha(i,:),~,~,~,~]=Evolutionary_trajectories(number_of_realisations,m0,alpha0,A,M,T,Cz(i),Cp,beta1,beta2,lambda12,lambda21,mu,NEVOL,f0,delta,Alphamax(i), switching_environments, plasticity, return_genotypes );
end

for i=1:10
OogamyRatio(i)=min(genotypeData_alpha{i,2})/max(genotypeData_alpha{i,2});
end


cd ..
cd ..

save('Data_files\Fig5\genotypes_m.mat','genotypeData_m');
save('Data_files\Fig5\genotypes_alpha.mat','genotypeData_alpha');
save('Data_files\Fig5\OogamyRatio.mat','OogamyRatio');