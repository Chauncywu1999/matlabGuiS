function ret=fun(pop1)
%% ������Ӧ��ֵ
%pop1=pop(5,:)';
pop2=pop1';
ypredict=calculate(pop2);

ret=0.2/ypredict(3)+0.8*ypredict(2);