function regresion_lineal(x,y)
  if(length(x)!=length(y))
    return
  endif

  suma_x=0;
  suma_y=0; 
  suma_xy=0;
  suma_x_cuadrado=0;
  n=length(x);
  
  for i=1:n
   suma_x=suma_x+x(i);
   suma_y=suma_y+y(i);
   suma_xy=suma_xy+x(i)*y(i);
   suma_x_cuadrado=suma_x_cuadrado+x(i)*x(i);
  endfor

  A=(n*suma_xy-suma_x*suma_y)/(n*suma_x_cuadrado-(suma_x)^2);
  disp('A es');
  disp(A);
  B=(suma_x_cuadrado*suma_y-suma_x*suma_xy)/(n*suma_x_cuadrado-(suma_x)^2);
  disp('B es');
  disp(B);
endfunction
