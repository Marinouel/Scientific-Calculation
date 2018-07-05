clear all;
clc;

%Erwthma 3-(a)- (i)

 k=1;
    for i=7:12
         n=2^i;
      
         
         %(i)random matrices
         
         Ai=rand(n);
         Bi=rand(n);
         f = @() mtimes(Ai, Bi);
         ti(k,1)=timeit(f,1);
         gflopi=2*n^2/ti(k,1)/10^9;
        
        
         %(ii) tridiagwnio matrices
                  
         upo_diag=rand(n-1,1);
         kuria_diag=rand(n,1);
         uper_diag=rand(n-1,1);
         Aii=[diag(upo_diag,-1)+diag(kuria_diag)+diag(uper_diag,1)];
         
         upo_diag=rand(n-1,1);
         kuria_diag=rand(n,1);
         uper_diag=rand(n-1,1);
         Bii=[diag(upo_diag,-1)+diag(kuria_diag)+diag(uper_diag,1)];
         
         f = @() mtimes(Aii, Bii);
         tii(k,1)=timeit(f,1);
         gflopii=2*n^2/tii(k,1)/10^9;
        
         
         %(iii) upper triangular matrices
         
         Aiii=triu(rand(n));
         Biii=triu(rand(n));
         
         f = @() mtimes(Aiii, Biii);
         tiii(k,1)=timeit(f,1);
         gflopiii=2*n^2/tiii(k,1)/10^9;
        
         
         
         %(iv) matrices
         
         Aiv= hess(rand(n));
         Biv= hess(rand(n));
         
         f = @() mtimes(Aiv, Biv);
         tiv(k,1)=timeit(f,1);
         gflopiv=2*n^2/tiv(k,1)/10^9;
        k=k+1;
        
    end; 
    
    n=2.^[7:12];
   
    subplot(1,2,1)
    plot(n, ti(:,1), 'y.-', n,tii(:,1),'r.--', n, tiii(:,1),'b.-', n, tiv(:,1), 'g.-');   
    legend('i', 'ii','iii', 'iv');
    xlabel('n');
    ylabel('t sec');
    title('Question 3 (a)- mtimes');  
     
    subplot(1,2,2) 
    plot(n, gflopi(:,1),'y.-', n,gflopii(:,1),'r.-', n, gflopiii(:,1),'b.-', n, gflopiv(:,1),'g.-');   
    legend('i', 'ii','iii', 'iv');
    xlabel('n');
    ylabel('Gflop/s');
    title('Question3 (a)- gflop');  
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     