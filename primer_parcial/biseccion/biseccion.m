a=input('Introduzca el valor de a   ');
b=input('Introduzca el valor de b   ');
e=input('Introduzca la tolerancia   ');
fa=funcion(a);
fb=funcion(b);
r=(a+b)/2;
fr=funcion(r);
fprintf('a\t b\t fa\t fb\t R\t FR\n');
fprintf('---------------------------------\n');
while abs(fr)>=e
fprintf('%d\t %d\t %d\t %d\t %d\t %d\n',a,b,fa,fb,r,fr);
if fa*fr <0
b=r;
fb=fr;
else
a=r;
fa=fr;
endif;
r=(a+b)/2;
fr=funcion(r);
endwhile;