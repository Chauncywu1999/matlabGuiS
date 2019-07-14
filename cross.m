function ret=cross(pop)
%% ½»²æ
%% ½»²æ¸ÅÂÊ
cp=0.8;
ret=pop;

[H,L]=size(pop);

for j=1:H-1
    if rand<cp
        judge=0;
        while judge==0
            a=pop(j,:);
            
            jj=randperm(H,1);
            k=randperm(L,1);
            a(k)=pop(jj,k);
            judge=test(a);
        end
        ret(j,:)=a;
    end
    
end

end

