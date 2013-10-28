function [L U P] = anPLU(A)
   U=A;
   n = length(A);
   pList={};
   lList={};
   lpList={};
   for k = 1:n-1
      P=eye(n);
      maxIndex=indexMaxAbs(U(:,k));
      P([k,maxIndex],:)=P([maxIndex,k],:);
      U=P*U;
      L=eye(n);
      L(k+1:n,k)=-U(k+1:n,k)./U(k,k);
      U=L*U;
      pList(k)=P;
      lList(k)=L;
   end

   thePright=eye(n);
   thePleft=eye(n);
   for k=n-1:-1:2
      lpList(k)=thePleft*lList{k}*thePright;
      thePright=pList{k}*thePright;
      thePleft=thePleft*pList{k};
   end
   lpList(1)=thePleft*lList{1}*thePright;
   P=thePleft*pList{1};
   L=eye(n);
   lpList;
   lList;
   for k=n:-1:2
      L(k:n,k-1)=-lpList{k-1}(k:n,k-1);
   end
end
