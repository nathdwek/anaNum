function aire=simpson(f,a,b,hMax)
   n=ceil((b-a)/hMax);
   h=(b-a)/n;
   aire=0;
   for i=1:n
      aire=aire+f(a+(i-1)*h)+4*f(a+(i-0.5)*h)+f(a+i*h);
   end
   aire=aire*(h/6);
end


