clear all;
clc;

%Erwthma 4


k=1;

for i=7:12
      n=2^i;   
    
      u=rand(n,1);
      v=rand(n,1);
      b=rand(n,1);

    
    f = @() rank2_power(u,v,b);
    ta(k,1)=timeit(f,1);
    gflopa(k,1)=2*n^2/ta(k,1)/10^9;
    
    f = @() my_rank2_power(u,v,b);
    tb(k,1)=timeit(f,1);
    gflopb(k,1)=2*n^2/tb(k,1)/10^9;
   
    k=k+1;
end

    
        
 i=2.^[7:12];
 subplot(2,2,1) 
 plot(i, ta(:,1), 'y.-');
 legend('rank2_power');
 xlabel('n');
 ylabel('t sec');
 title('Σύγκριση χρόνου');
     
         
 i=2.^[7:12];
 subplot(2,2,2) 
 plot(i, gflopa(:,1), 'g.-');
 legend('rank2_power');
 xlabel('n');
 ylabel('gflopi');
 title('Σύγκριση gflopi');
 
 i=2.^[7:12];
 subplot(2,2,3) 
 plot(i, tb(:,1), 'y.-');
 legend('my_rank2_power');
 xlabel('n');
 ylabel('t sec');
 title('Σύγκριση χρόνου');
 
 i=2.^[7:12];
 subplot(2,2,4) 
 plot(i, gflopb(:,1), 'g.-');
 legend('my_rank2_power');
 xlabel('n');
 ylabel('gflopii');
 title('Σύγκριση gflopii');
 
 
 

 
 
 