function [L U] = anLu(A)
   n = length(A);
   for k = 1:n
      for j = k:n
         U(k,j) = A(k,j);
      end
      L(k,k) = 1;
      for i = k+1:n
         L(i,k) = A(i,k)/A(k,k);
      end
      for i = k+1:n
         for j = k+1:n
         A(i,j) = A(i,j)-L(i,k)*U(k,j);
         end
      end
   end
end

