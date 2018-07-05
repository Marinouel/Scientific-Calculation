function [c] = myTridMult(A,B,n)


 c=zeros(n,n);
for i=1:n
    for j=1:n
        for k=1:n
            if A(i,k)~=0 || B(k,j)~=0
                c(i,j)=c(i,j)+A(i,k)* B(k,j);
            end
        end
    end
end
