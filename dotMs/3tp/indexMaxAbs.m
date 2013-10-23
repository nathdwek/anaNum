function [index]=indexMaxAbs(v)
   indexValue=vec(1);
   index=1;
   for i=2:length(v)
      iValue=abs(v(i));
      if iValue>indexValue;
         index=i;
         indexValue=iValue;
      end
   end
end
