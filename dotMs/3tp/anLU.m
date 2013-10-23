function [L U] = anLU(A)
   n = length(A);
   for k = 1:n
      for j = k:n
         U(k,j) = A(k,j); %garde la "première" ligne dans son entièreté. "Je ne touche plus à ça"
      end
      L(k,k) = 1; %raccourci de l'instruction ligne 9, sans calculer A(k,k)/A(k,k). "La première ligne, je fais fois 1"
      for i = k+1:n
         L(i,k) = A(i,k)/A(k,k); %les autres coefficients qui multiplient les lignes (cf élimination de Gauss)
      end
      for i = k+1:n
         for j = k+1:n
         A(i,j) = A(i,j)-L(i,k)*U(k,j); %j'applique L sur A. "je travaille sur A et stocke (ligne 5) les lignes propres/définitives dans U"
         end
      end
   end
end
