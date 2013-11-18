function [aire]=trapezes(f,a,b,h)
   n=ceil((b-a)/h);
   aire=0;
   for i=1:n
      aire=aire+(f(a+h*(i-1))+f(a+i*h));
   end
   aire=aire*(h/2);
end
