function ret=mutate(pop)
%% �������
global popmin popmax
%% �������
mp=0.2;
ret=pop;

[H,L]=size(pop);

for j=1:H
    judge=0;
    while judge==0
        a=pop(j,:);
        if rand<mp
            k=randperm(L,1);
            a(k)=popmin(k)+(popmax(k)-popmin(k))*rand;
        end
        judge=test(a);
    end
    
    ret(j,:)=a;
    
    
end