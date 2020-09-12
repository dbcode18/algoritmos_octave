a=input('introduzca el primer limite -->');
b=input('introduzca el segundo limite -->');
n=input('introduzca el numero de iteraciones -->');
e=input('introduzca la tolerancia -->');
fa=funcion(a);
fb=funcion(b);
obtenido=0;
fprintf ("----- a ----- b ----- fa ----- fb ----- r ----- fr -----  \n\n");

for k=1:n
  r=((a*funcion(b)) - b*funcion(a)) / (funcion(b)-funcion(a));
  fr=funcion(r);
  fprintf (" %d       %d       %d       %d       %d       %d\n\n",a,b,fa,fb,r,fr);
  
  if abs(fr)<e
    obtenido=1;
    break;
  endif
  
  a=b;
  fa=fb;
  b=r;
  fb=fr;
  
endfor

if (obtenido==1)
  fprintf ("\nR es ---> %d\n\n",r);
else
  fprintf ("Se ha pasado el numero maximo de iteraciones");
endif
  