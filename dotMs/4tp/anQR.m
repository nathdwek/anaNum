function [Q R]=anQR(A)
   R=A;
   n=min(size(A));
   m=max(size(A));
   Q=eye(n);
   V=zeros(n);
   for k=1:n;
      x=R(k:m,k);
      v=x;
      v(1)=x(1)+sign(x(1))*norm(x);
      v=v/norm(v);
      V(k:m,k)=v;
      R(k:m,k:n)=R(k:m,k:n)-2*(v*(v'*R(k:m,k:n)));
   end
   for k=1:n
      Q(n-k:n,n-k:n)=(eye(k+1)-2*V(n-k:m,n-k)*(V(n-k:m,n-k))')*Q(n-k:n,n-k:n); %A voir
   end
end
