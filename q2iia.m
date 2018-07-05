clear all;
clc;
%Erwthma 2-(ii)- (a)

k=1;
    for i=7:12
         n=2^i;
         A=rand(n);
         b=rand(n,1);
    
        %xronometrisi gia thn lu
        tic;
        [L, U, P]=lu(A);
        time_lu(k,1)=toc;
        gflopi(k,1)=2*n^2/time_lu(k,1)/10^9;
    
        %xronometrisi gia thn A*b
        tic;
        c=A*b;
        time_c(k,1)=toc;
        gflopii(k,1)=2*n^2/time_c(k,1)/10^9;
   
       k=k+1;
    end

 subplot(1,2,1)   
 i=2.^[7:12];
 plot(i,time_lu(:,1), 'g.-', i, time_c(:,1), 'b.--');
 legend('lu(A)', 'c');
 xlabel('n');
 ylabel('t sec');
 title('Χρηση tic-toc');

 subplot(1,2,2)
 i=2.^[7:12];
 plot(i,gflopi(:,1), 'g.-', i, gflopii(:,1), 'b.--');
 legend('lu(A)', 'c');
 xlabel('n');
 ylabel('gflop');
 title('Χρηση  gflop');