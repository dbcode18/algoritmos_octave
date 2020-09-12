x=[7,8,9];
y=[7,8,9];
z=[];

for i=1:length(x)
  z(i)=x(i);
endfor


for i=1:length(y)
  
  repetido=0;
  for j=1:length(x)
    if(x(j)==y(i))
      repetido=1;
    endif
  endfor
  
  if(repetido==0)
    z(length(z)+1)=y(i);
  endif
 
endfor

disp(z);