% Autores:Andres Facunda,Daniela Jácome,Gabriel Vivas.
% Fecha: 06/07/2019
function  p=dibNodosEnOrden(ordenVertices,A);

for i=1:(length(ordenVertices))
puntosOrden(i,1)=A(ordenVertices(i),1);
puntosOrden(i,2)=A(ordenVertices(i),2);
end

plot(puntosOrden(:,1),puntosOrden(:,2),'r-*');
return