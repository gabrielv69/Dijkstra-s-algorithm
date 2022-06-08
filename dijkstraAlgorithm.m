% Autores:Andres Facunda,Daniela J�come,Gabriel Vivas.
% Fecha: 07/07/2019
function d = dijkstraAlgorithm(W, pStart, pEnd)
% Esta funci�n implementa el algoritmo de Dijkstra

numVertices = size(W, 1); % Calcula el n�mero de v�rtices del grafo
% Inicializaci�n del vector de etiquetas de los v�rtices
L = Inf(numVertices, numVertices);
L(pStart) = 0;

% Inicializaci�n del conjunto de v�rtices no explorados
T = 1:numVertices;
% vector inicial donde se guardan el orden de los nodos
ordenDelViaje=[1,1];
% Iteraci�n mientras el punto destino no ha sido explorado
k=1;
while ~isempty( find(pEnd == T, 1) )
    [dummy, idx] = min( L(T) );
    v = T(idx); % V�rtice con menor valor de etiqueta 
    ordenDelViaje(k)=v;
    k=k+1;
    % Eliminaci�n del v�rtice con menor valor de etiqueta de T
    T = T(T ~= v);  
    % Redefinici�n del valor de las etiquetas de los v�rtices
    % adyacentes a v que todav�a est�n en T
    adjacentVertices = find( W(v, :) ~= NaN );
    numAdjacentVertices = length(adjacentVertices);
    for i = 1:numAdjacentVertices
        L( adjacentVertices(i) ) = min(L( adjacentVertices(i) ),...
           L(v) + W(v, adjacentVertices(i)) );
    end 
end
d= [L(pEnd),ordenDelViaje];
return