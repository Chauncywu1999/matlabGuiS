function ret=test(pop1)
ret=1;
%pop1=pop(5,:)';
global ymin ymax
pop2=pop1';
ypredict=calculate(pop2);

for j=1:size(ypredict,2)
    if ypredict(j)>=ymax(j)||ypredict(j)<=ymin(j)
        ret=0;
        break;
    end
end
