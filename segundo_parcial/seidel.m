function seidel(A, b, x, n, e)

for i=1:length(A)
  for j=1:length(A)
    if(i>=j)
      L(i,j)=A(i,j);
      U(i,j)=0;
    else
      L(i,j)=0;
      U(i,j)=A(i,j);
    endif
  endfor  
endfor

S=-inv(L)*U;
c=inv(L)*b;

fprintf ("\n\nS\n");
disp(S);
fprintf ("\n\nc\n\n");
disp(c);

if ((norm(S,inf)>0)&(norm(S,inf)<1))
  fprintf ("\nLa norma de S es  %d\n\n",norm(S,inf));
else
  fprintf ("\nLa norma de S es  %d  Por lo tanto no se puede usar JACOBI\n\n\n",norm(S,inf));
endif


fprintf("0     -  ");
for i=1:length(b)
  fprintf ("  %d  ",x(i));
endfor
fprintf("        -  XXXXX");

fprintf ("\n\n");

for i=1:n
  x_viejo=x;
  x=c+S*x;
  #error=norm(x-x_viejo,inf);
  error=norm(x-x_viejo,inf)/norm(x,inf);
  fprintf("%d     -  ",i);
  for i=1:length(b)
    fprintf ("  %d  ",x(i));
  endfor
  fprintf("        -  %d",error);
  fprintf ("\n\n");
  
  if(error<e)
    break;
  endif 
 
endfor

endfunction