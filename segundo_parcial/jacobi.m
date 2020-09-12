function jacobi(A, b, x, n, e)

for i=1:length(A)
  for j=1:length(A)
    if(i==j)
      D(i,j)=A(i,j);
      C(i,j)=0;
    else
      D(i,j)=0;
      C(i,j)=A(i,j);
    endif
  endfor  
endfor

B=-inv(D)*C;
K=inv(D)*b;

fprintf ("\n\nB\n");
disp(B);
fprintf ("\n\nK\n\n");
disp(K);

if ((norm(B,inf)>0)&(norm(B,inf)<1))
  fprintf ("\nLa norma de B es  %d\n\n",norm(B,inf));
else
  fprintf ("\nLa norma de B es  %d  Por lo tanto no se puede usar JACOBI\n\n\n",norm(B,inf));
  return;
endif

fprintf("0     -  ");
for i=1:length(b)
  fprintf ("  %d  ",x(i));
endfor
fprintf("        -  XXXXX");

fprintf ("\n\n");

for i=1:n
  x_viejo=x;
  x=K+B*x;
  error=norm(x-x_viejo,inf);
  #error=norm(x-x_viejo,inf)/norm(x,inf);
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