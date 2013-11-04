function [newX n]=dicho(f, xPos, xNeg, eps)
   if f(xPos) < f(xNeg)
      tmp=xPos;
      xPos=xNeg;
      xNeg=tmp;
   end
   n=0;
   while abs(xPos - xNeg)>eps
      newX = (xPos+xNeg)/2;
      newF=f(newX);
      if newF == 0
         break
      elseif newF < 0
         xNeg = newX;
      else
         xPos = newX;
      end
   n++;
   end
end

