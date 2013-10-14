function [x]= anLu(trilA,b)
   k=length(trilA);
   x=b;
   for i=2:k;
      for j=1:i-1;
         x(i,1)=x(i,1)-trilA(i,j)*x(j,1);
      end
      x(i,1)=x(i,1)/trilA(i,i);
   end
end
