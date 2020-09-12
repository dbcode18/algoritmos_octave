#SE LE PASA UNA COLUMNA DE 'X' Y 'Y'
function fx = newton_luis(xn,x,y)
  #Se crea la matriz de ceros
   m = zeros(size(y),size(y));
   
   #Se rellena la primera fila con los valores de Y
   for i = 1:size(y)
     m(1,i) = y(i,1);
   endfor
   
   #Se calculan las primeras
   for i = 2:size(y)
     m(2,i) = (y(i,1)-y(i-1,1))/(x(i,1)-x(i-1,1));
   endfor
   
   #Se calculan las demas
   for i = 3:size(y)
     index = 1;
     for j = i:size(y)
      m(i,j) = (m(i-1,j)-m(i-1,j-1))/(x(j,1)-x(index,1));
      index = index+1;
     endfor
   endfor
   
   #Se calcula el polinonio
   for i=1:size(m)
     if (i==1)
      fx = m(i,i);
     else
      aux = 1;
      j=i-1;
      while(j>0)
        aux = aux * (xn - x(j,1));
        j=j-1;
      endwhile
      fx = fx + (m(i,i)*aux);
     endif
   endfor
endfunction
