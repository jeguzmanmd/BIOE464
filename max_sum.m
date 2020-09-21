% test 1
% test 2
function [summa, index]=max_sum(v,n)
L=length(v);
p=L-(n-1);
k=0;
t=0;
for i=1:p
    z=n+k;
    k=k+1;
    s=0;
    for d=i:z
        s=s+v(d);
    end
    t(i)=s;
end
if (n<=L)
    [summa index]=max(t);
else
    summa=0;
    index=-1;
end
end