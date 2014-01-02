function yks = ex1e(x0, h, xEnd, derivSec, deriv0, yEnd)
   xks=x0:h:xEnd;
   n=length(xks);
   tInd=[];
   matSys=zeros(n);
   for i=1:n-2
      matSys(i,[i:i+2])=[-1 2+h^2 -1];
      tInd=(h^2)*derivSec(xks(i+1));
   end
   matSys(n-1,n)=1;
   tInd(n-1)=yEnd;
   matSys(n,[0 1])=[-1/h 1/h]
   tInd(n)=(-h/2)*derivSec(x0)-deriv0
   yks=matSys\tInd;
   plot(xks,yks);
end
