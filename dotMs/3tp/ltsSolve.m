function [x]= ltsSolve(L,b)
   k=length(L);
   x=b;
   for i=1:k;
      for j=1:i-1;
         x(i,1)=x(i,1)-L(i,j)*x(j,1);
      end
      x(i,1)=x(i,1)/L(i,i);
   end
end
