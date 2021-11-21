% validacion del modelo ANFIS

matriz_salida = [];
% cambiar el nombre del modelo 

for i = 1:200
    vector = (dataset3check(i,:));
    salida = evalfis(FIS_Trapezoidal, vector);
%     salida
    matriz_salida = [matriz_salida; salida];
end
