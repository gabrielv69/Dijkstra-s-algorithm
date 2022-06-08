% Autores:Andres Facunda,Daniela Jácome,Gabriel Vivas.
% Fecha: 07/07/2019
function d = dijkstraAlgorithm(W, pStart, pEnd)
% Esta función implementa el algoritmo de Dijkstra

numVertices = size(W, 1); % Calcula el número de vértices del grafo
% Inicialización del vector de etiquetas de los vértices
L = Inf(numVertices, numVertices);
L(pStart) = 0;

% Inicialización del conjunto de vértices no explorados
T = 1:numVertices;
% vector inicial donde se guardan el orden de los nodos
ordenDelViaje=[1,1];
% Iteración mientras el punto destino no ha sido explorado
k=1;
while ~isempty( find(pEnd == T, 1) )
    [dummy, idx] = min( L(T) );
    v = T(idx); % Vértice con menor valor de etiqueta 
    ordenDelViaje(k)=v;
    k=k+1;
    % Eliminación del vértice con menor valor de etiqueta de T
    T = T(T ~= v);  
    % Redefinición del valor de las etiquetas de los vértices
    % adyacentes a v que todavía están en T
    adjacentVertices = find( W(v, :) ~= NaN );
    numAdjacentVertices = length(adjacentVertices);
    for i = 1:numAdjacentVertices
        L( adjacentVertices(i) ) = min(L( adjacentVertices(i) ),...
           L(v) + W(v, adjacentVertices(i)) );
    end 
end
d= [L(pEnd),ordenDelViaje];
return