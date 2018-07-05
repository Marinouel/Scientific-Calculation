clear all;
clc;

%Erwthma 3-(b)

 k=1;
    for i=7:12
         n=2^i;
      
         %(ii) tridiagwnio matrices
         
         upo_diag=rand(n-1,1);
         kuria_diag=rand(n,1);
         uper_diag=rand(n-1,1);
         Aii=[diag(upo_diag,-1)+diag(kuria_diag)+diag(uper_diag,1)];
         
         upo_diag=rand(n-1,1);
         kuria_diag=rand(n,1);
         uper_diag=rand(n-1,1);
         Bii=[diag(upo_diag,-1)+diag(kuria_diag)+diag(uper_diag,1)];
        
         f = @() myTridMult(Aii, Bii,n);
         t_myTridMult(k,1)=timeit(f,1);


            f = @() mtimes(Aii, Bii);
         t_mtimes(k,1)=timeit(f,1);

        k=k+1;
   end; 
    
    n=2.^[7:12];
    
    plot(n,t_myTridMult(:,1),'r.--',n,t_mtimes(:,1),'y.-');   
    legend('t_myTridMult','t_mtimes');
    xlabel('n');
    ylabel('t sec');
    title('Question 3 (b)');  
    