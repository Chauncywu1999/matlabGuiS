function ret=calculate(pop1)
%% ���������yֵ
global net1
nh=sim(net1,pop1);
%% ����һ��
global MINy MAXy

%%
for j=1:size(nh,1)
    ret(1,j)=(MAXy(j)-MINy(j))*nh(j)+MINy(j);
end


end