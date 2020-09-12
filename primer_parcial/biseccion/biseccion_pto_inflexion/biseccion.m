a=input('introduzca el primer limite -->');
b=input('introduzca el segundo limite -->');
n=input('introduzca el numero de iteraciones -->');
e=input('introduzca la tolerancia -->');
fa=dsegfuncion(a);
fb=dsegfuncion(b);
obtenido=0;
fprintf ("----- a ----- b ----- fa ----- fb ----- r ----- fr -----  \n\n");

for k=1:n
  r=(a+b)/2;
  fr=dsegfuncion(r);
  fprintf (" %d       %d       %d       %d       %d       %d\n\n",a,b,fa,fb,r,fr);
  
  if abs(fr)<e
    obtenido=1;
    break;
  endif
  
  if (fa*fr<0)
    b=r;
    fb=fr;
  else
    a=r;
    fa=fr;
  endif
endfor

if (obtenido==1)
  fprintf ("\nFR es ---> %d\n\n",r);
else
  fprintf ("Se ha pasado el numero maximo de iteraciones");
endif
  