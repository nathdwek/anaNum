function x = jcb(A,b,epsilonStop)
   n=length(A);
   x=zeros(n,1);
   epsilon=1;
   while abs(epsilon)>=epsilonStop
      newX=b;
      for i=1:n
         for j=1:i-1
            newX(i,1)=newX(i,1)-A(i,j)*x(j,1);
         end
         for j=i+1:n
            newX(i,1)=newX(i,1)-A(i,j)*x(j,1);
         end
         newX(i,1)=newX(i,1)/A(i,i);
      end
      x=newX;
      epsilon=norm(b-A*x)/norm(b);
   end
end
