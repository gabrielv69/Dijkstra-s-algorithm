% Autores:Andres Facunda,Daniela Jácome,Gabriel Vivas.
% Fecha: 06/07/2019

function w =llenarDistancia(A,pMax,M)

for i=1:pMax    
for j=1:pMax
        % Se calcula la distancia entre todos los puntos y se guarda
         w(i,j)= sqrt((A(i,1)-A(j,1))^2 + (A(i,2)-A(j,2))^2);
         if(M(i,j)==0)
             w(i,j)=NaN;
         end
end
end
  
return