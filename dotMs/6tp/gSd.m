function x = gSd(A,b,epsilonStop)
   n=length(A);
   x=zeros(n,1);
   epsilon=1;
   while abs(epsilon)>=epsilonStop
      for i=1:n
         x(i,1)=b(i,1);
         for j=1:i-1
            x(i,1)=x(i,1)-A(i,j)*x(j,1);
         end
         for j=i+1:n
            x(i,1)=x(i,1)-A(i,j)*x(j,1);
         end
         x(i,1)=x(i,1)/A(i,i);
      end
      x
      epsilon=norm(b-A*x)/norm(b);
   end
end
