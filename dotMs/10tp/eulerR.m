function y=eulerR(f,y0,t,h)
   y(:,1)=y0;
   for tK=t(2:end)
      g=@(x) y(:,end)+h*f(tK, x)-x;
      y(:,end+1)=fsolve(g, y(:,end));
   end
end
