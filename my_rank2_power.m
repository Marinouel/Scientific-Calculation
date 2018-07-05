function x= my_rank2_power(u,v,b)
   
x=(u*u'+v*v'); 
x= x*b ;

i=1:10 
     x=(u*u'+v*v')*x;
end
