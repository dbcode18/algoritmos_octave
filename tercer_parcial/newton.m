#.....SE LE PASA COMO PARAMETROS.....:
#x: una lista con los valores de x
#y: una lista con los valores de y
#evaluar: punto en x a evaluar la funcion
#flag: siempre pasarle 1
#.....RETORNA.....:
#resp: resultado de evaluar 'evaluar' en polinomio resultante
#w: obviar
#: obviar
#NOTA: el algoritmo imprime valores. Esos son los coeficientes.
function [resp,w,mul]=newton(x,y,evaluar,flag)

  if (length(x)==1)
    w=y(1);

   
   if (flag)
    mul=1;
    resp=w;
    #disp(mul);
    #disp(resp);
    disp(w);
    else
    mul=1;
    resp=1;
   endif   
   
 else
   a=[];
   b=[];
   c=[];
   d=[];
   for i=1:(length(x)-1)
     a(i)=x(i);
     b(i)=y(i);
   endfor
   
   for i=2:length(x)
     c(i-1)=x(i);
     d(i-1)=y(i);
   endfor
   
   if(flag)
    hijos_flag=1;
   else
    hijos_flag=0;
   endif
   
   [q,w_uno,h]=newton(c,d,evaluar,0);
   [resp,w_dos,mul]=newton(a,b,evaluar,hijos_flag);
   
   w=(w_uno-w_dos)/(x(length(x))-x(1));

   
   if (flag)
    disp(w);
    mul=mul*(evaluar-x(length(x)-1));
    resp=resp+w*mul;
    #disp(mul);
    #disp(resp);
   else
    mul=1;
    resp=1;
   endif
   
  endif
  
endfunction
