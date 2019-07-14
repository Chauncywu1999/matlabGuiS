function ret=calculate(pop1)
%% 用网络计算y值
global net1
nh=sim(net1,pop1);
%% 反归一化
global MINy MAXy

%%
for j=1:size(nh,1)
    ret(1,j)=(MAXy(j)-MINy(j))*nh(j)+MINy(j);
end


end