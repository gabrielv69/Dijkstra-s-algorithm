% Autores:Andres Facunda,Daniela Jácome,Gabriel Vivas.
% Fecha: 07/07/2019
clc; % Limpiar pantalla
clear all; % Borra de la RAM las variables de Matlab
%Cargamos el archivo con el que se trabajara
load('tsp_100_3.mat')
%  guardamos la cantidad de nodos en pMax
pMax=v(1,1);
% acomodamos las coordenadas de los nodos
display(v)
v=[v(2:pMax+1,1),v(2:pMax+1,2)];
display(v)
% creamos y llenamos la matriz de adyacencia
W=llenarDistancia(v,pMax,M);
display(W)
pStart = p_start; % punto de inicio
pEnd = p_end; % punto de llegada
% Llamada al algoritmo de Dijkstra
d=dijkstraAlgorithm(W, pStart, pEnd);
display(d)
distancia = d(1)
OrdenVertices=d(2:end)
% Llamada para la grafica
dibNodosEnOrden(OrdenVertices,v);
