function newton(s,n,e)
  for i=1:n
    F=funcion(s(1),s(2));
    J=dfuncion(s(1),s(2));
    s=s-inv(J)*F;
    display(s')
  endfor
endfunction
