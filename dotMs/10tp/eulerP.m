function y=eulerP(f,y0,t,h)
   y(:,1)=y0;
   for tK=t(1:end-1)
      y(:,end+1)=y(:,end)+f(tK,y(:,end))*h;
   end
end
