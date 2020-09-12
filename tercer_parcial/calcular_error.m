function calcular_error(x,y)
  e=0;
  for i=1:length(x)
    q=(funcion(x(i))-y(i))^2;
    e=e+q;
    disp(q);
  endfor
  disp('el error total es:');
  disp(e);
endfunction
