%Se le pasa: un vector con los valores de X, 
%            un vector con los valores de Y 
%            y el valor (X) que se quiere evaluar
function yn = lagrange(x,y,xn)
  if(length(x) != length(y))
    printf('ERROR: Longitudes de X y Y diferentes');
    return;
  endif
  n = length(x);
  yn = 0;
  for i=1:n %Itera con respecto a Y
    Li = 0;
    L1 = 1;
    L2 = 1;
    for j=1:n  %Itera con respecto a X
      if(i == j)
        continue;
      endif
      L1 *= (xn - x(j));
      L2 *= (x(i) - x(j));
    endfor
    Li = L1/L2;
    yn += y(i)*Li; 
  endfor
endfunction
