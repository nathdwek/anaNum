function [x]=anSolveLU(A,b)
   [L,U]=anLU(A);
   y=ltsSolve(L,b);
   x=utsSolve(U,y);
end
