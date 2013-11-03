function [L U P] = anPLU(A)

   %initialisation
   U=A;
   n = length(A);
   pList={}; %liste des matrices de permutation des étapes successives
   lList={}; %liste des matrices d'élimination des étapes successives
   lpList={}; %liste des matrices de type P3*P2*L1*P2*P3

   %Algo de permutation-élimination. But:Produire une liste de matrices de permutation et d'élimination, ainsi que U
   for k = 1:n-1
      P=eye(n); %nouvelle matrice de permutation identité
      maxIndex=indexMaxAbs(U(:,k)); %trouver la position de l'élément le plus grand en valeur absolue dans la colonne considérée
      P([k,maxIndex],:)=P([maxIndex,k],:); %former la matrice de permutation pour amener cet élément sur la diagonale
      U=P*U;
      L=eye(n); %nouvelle matrice d'élimination
      L(k+1:n,k)=-U(k+1:n,k)./U(k,k); %Gauss
      U=L*U;
      pList(k)=P;
      lList(k)=L;
   end

   %formation de P et d'une liste de Lprims; à partir de la liste des P des L successifs
   thePright=pList{end}; %le produit de matrices qui va multiplier à droite
   thePleft=pList{end}; %le produit de matrices qui va multiplier à gauche
   lpList(n-1)=lList(end); %la première Lprim formée (correspondant à la dernière matrice d'élimination L) est égale à cette matrice L lui correspondant (ex: n=4: Lp3=L3)
   for k=n-2:-1:1 %cf pdf
      lpList(k)=thePleft*lList{k}*thePright; %ex: Lp2=P4*P3*L2*P3*P4
      thePright=pList{k}*thePright; %ex: Pdroite=P2*Pdroite=P2*P3*P4
      thePleft=thePleft*pList{k}; %ex: Pgauche=Pgauche*P2=P4*P3*P2
   end
   P=thePleft;

   %formation de L à partir des Lprims successifs
   L=eye(n); %Matrice L "finale" /!\ formée nottament à partir des L dans l'algo plus haut, mais pas égale à celles-ci!
   for k=n:-1:2
      L(k:n,k-1)=-lpList{k-1}(k:n,k-1); %cf pdf/cours
   end
end
