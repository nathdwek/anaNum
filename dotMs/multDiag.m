function f1 = multDiag(M)
	f1=1;
	[m,n]=size(M);
	for i =1:min(m,n)
	   f1=f1*M(i,i);
	   end
	
