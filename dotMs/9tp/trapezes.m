function [aire]=trapezes(f,a,b,hMax)
   n=ceil((b-a)/hMax);
   h=(b-a)/n;
   aire=0;
   for i=1:n
      aire=aire+(f(a+h*(i-1))+f(a+i*h));
   end
   aire=aire*(h/2);
end
