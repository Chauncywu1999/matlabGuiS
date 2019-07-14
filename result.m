
[data,~,raw]=xlsread('finish.xlsx');

x=data(:,2:5);
y=data(:,6:8);

MINx=min(x);
MAXx=max(x);

global MINy MAXy
MINy=min(y);
MAXy=max(y);


[input,~]=mapminmax(x',0,1);
[output,~]=mapminmax(y',0,1);

net=newff(input,output,[50,3],{'tansig','purelin'},'traingdm');


net.trainParam.show=100;                  
net.trainParam.mem_reduc=1;
net.trainParam.mc=0.8;                 
net.trainParam.Ir=0.9;              
net.trainParam.epochs=10000;           
net.trainParam.goal=0.00001;                
net.trainParam.max_fail=100;


net=train(net,input,output);


% nh=sim(net,input);

%load net
global net1
net1=net;

popsize=10;
iterations=200;

global xmin xmax
xmin=[4000,0,0.2,0];
xmax=[8000,2000,1,0.6];

global ymin ymax
ymin=[0,0,4.2];
ymax=[5.211,0.099,20];


global popmin popmax
for k=1:4
    popmin(1,k)=(xmin(k)-MINx(k))/(MAXx(k)-MINx(k));
    popmax(1,k)=(xmax(k)-MINx(k))/(MAXx(k)-MINx(k));
end


for j=1:popsize
    judge=0;
    while judge==0
        pop(j,:)=popmin+(popmax-popmin)*rand;
        judge=test(pop(j,:));
        fitness(j,1)=fun(pop(j,:));
    end
end


[bestfitness,bestindex]=min(fitness);
zbest=pop(bestindex,:);  
gbest=pop;              
fitnessgbest=fitness;       
fitnesszbest=bestfitness;  


Fit(1)=fitnesszbest;


for iter=1:iterations
    disp(['第',num2str(iter),'/',num2str(iterations),'次迭代'])
  
    crosspop=cross(pop);

    mutatepop=mutate(crosspop);
    
    pop=mutatepop;
 
    for j=1:popsize
        fitness(j,1)=fun(pop(j,:));
    end

    for j=1:popsize
        
   
        if fitness(j)<fitnessgbest(j)
            gbest(j,:)=pop(j,:);            
            fitnessgbest(j)=fitness(j);   
        end
        
        
        if fitness(j)<fitnesszbest
            zbest=pop(j,:);                
            fitnesszbest=fitness(j);  
        end
    end
   
    Fit(1+iter)=fitnesszbest;
    
    
end


bestx=zbest.*(MAXx-MINx)+MINx;
disp(['最优的x：',num2str(bestx)])

besty=calculate(zbest');
disp(['最优的y：',num2str(besty)])

disp(['目标函数最小值：',num2str(fitnesszbest)])

figure(1)
plot(Fit,'linewidth',2)