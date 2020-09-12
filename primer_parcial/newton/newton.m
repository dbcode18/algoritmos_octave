function newton(x,e)
  rviejo=0;
  fr=funcion(x);
  fprintf ("----- a ----- r ----- fr ----- e ----- \n\n")
  while (abs(fr)>=e)
    r=x-(funcion(x)/dfuncion(x));
    fr=funcion(r);
    fprintf (" %d       %d       %d       %d\n\n",x,r,fr,(r-rviejo));
    x=r;
    rviejo=r;
  endwhile;
  fprintf("%d\n",x);
endfunction;