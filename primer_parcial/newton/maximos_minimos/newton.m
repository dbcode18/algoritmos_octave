
  x=input('Introduzca el inicio');
  e=input('Introduzca la tolerancia');
  fr=funcion(x);
  while (abs(fr)>=e)
    r=x-(funcion(x)/dfuncion(x));
    fr=funcion(r);
    x=r;
  endwhile;
  
  w=dfuncion(x);
  
  if(w)
    if(w>0)
      disp('minimo en');
      disp(x);
    else
      disp('maximo en');
      disp(x);
    endif
  else
      disp('la raiz es');
      disp(x);
  endif
