function resolver(A,b)
  [L,U]=calcular_lu(A);
  z1=b(1);
  z2=b(2)-L(2,1)*z1;
  z3=b(3)-L(3,1)*z1-L(3,2)*z2;
  disp(z1);
  disp(z2);
  disp(z3);
  
  x3=z3/U(3,3);
  x2=(z2-(x3*U(2,3)))/U(2,2);
  x1=(z1-(U(1,2)*x2)-(U(1,3)*x3))/U(1,1);
  fprintf("\n%d     %d     %d\n\n",x1,x2,x3);
endfunction
