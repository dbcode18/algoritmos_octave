a=input('introduzca el primer limite -->');
b=input('introduzca el segundo limite -->');
n=input('introduzca el numero de iteraciones -->');
e=input('introduzca la tolerancia -->');
fa=funcion(a);
fb=funcion(b);
obtenido=0;
fprintf ("----- a ----- b ----- fa ----- fb ----- r ----- fr -----   epor ----  \n\n");
rviejo=0;

for k=1:n
  r=((a*funcion(b)) - b*funcion(a)) / (funcion(b)-funcion(a));
  fr=funcion(r);
  fprintf (" %d       %d       %d       %d       %d       %d       %d\n\n",a,b,fa,fb,r,fr,((abs(r-rviejo)/rviejo)*100));
  
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
  rviejo=r;
endfor

if (obtenido==1)
  fprintf ("\nFR es ---> %d\n\n",r);
else
  fprintf ("Se ha pasado el numero maximo de iteraciones");
endif
  