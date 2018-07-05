clear all
clc
%Erwthma 2-(g)

k=1;
    for i=7:12
         n=2^i;
         A=rand(n);
         b=rand(n,1);
         
         f = @()lu(A);
         time_lu(k,1)=timeit(f,3);
         gflopi(k,1)=2*n^2/time_lu(k,1)/10^9;
         
        f = @()A*b;
        time_c(k,1)=timeit(f,1);
        gflopii(k,1)=2*n^2/time_c(k,1)/10^9;
        
     k=k+1;
   
    end
    
 subplot(1,2,1)
 i=2.^[7:12];
 plot(i,time_lu(:,1), 'g.-', i, time_c(:,1), 'b.--');
 legend('lu(A)', 'c');
 xlabel('n');
 ylabel('t sec');
 title('Χρηση timeit')
 
 subplot(1,2,2)
 i=2.^[7:12];
 plot(i, gflopi(:,1), 'g.-', i, gflopii(:,1), 'b.--');
 legend('lu(A)', 'c');
 xlabel('n');
 ylabel(' gflop');
 title('Επίδοση  gflop');
 
 
 
 
 
 