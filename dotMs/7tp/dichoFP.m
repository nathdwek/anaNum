function [newX n]=dichoFP(f, xPos, xNeg, eps)
   if f(xPos) < f(xNeg)
      tmp=xPos;
      xPos=xNeg;
      xNeg=tmp;
   end
   err=1;
   n=0;
   while err>eps;
      slope=(f(xNeg)-f(xPos))/(xNeg-xPos);
      newX=xPos-f(xPos)/slope;
      newF=f(newX);
      if newF == 0
         break
      elseif newF < 0
         xNeg = newX;
      else
         xPos = newX;
      end
      err=abs(newF);
      n++;
   end
end
