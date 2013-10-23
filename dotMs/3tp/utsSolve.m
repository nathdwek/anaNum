function [x]=utsSolve(U,b)
   n=length(U);
   x=b;
   for k=n:-1:1
      for i=k+1:n
         x(k,1)=x(k,1)-U(k,i)*x(i,1);
      end
      x(k,1)=x(k,1)/U(k,k);
   end
end
