function [Q R]=anQR(A)
   R=A;
   n=min(size(A));
   m=max(size(A));
   Q=eye(m);
   V=zeros(n);
   for k=1:n;
      x=R(k:m,k);
      x(1)=x(1)+sign(x(1))*norm(x);
      v=x/norm(x);
      V(k:m,k)=v;
      R(k:m,k:n)=R(k:m,k:n)-2*(v*(v'*R(k:m,k:n)));
   end
   for k=0:n-1
      v=V(n-k:m,n-k);
      w=2*v*v';
      Q(n-k:m,n-k:m)=Q(n-k:m,n-k:m)-w*Q(n-k:m,n-k:m);
   end
end
