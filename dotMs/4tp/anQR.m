function [R]=anQR(A)
   R=A;
   n=min(size(A));
   m=max(size(A));
   if n==m;
      n=n-1;
   end
   vs=[];
   for k=1:n;
      x=R(k:m,k);
      v=x;
      v(1)=x(1)+sign(x(1))*norm(x);
      v=v/norm(v);
      R(k:m,k:n)=R(k:m,k:n)-2*(v*(v'*R(k:m,k:n)));
   end
end


%Trouver Q.
