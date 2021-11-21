% vamos a hacer un loop para poder transformar las matrices en vectores de
% una sola fila

% importar los datos 30 x 30

%imagenes30 = readNPY('Imagenes_gris_30.npy');
imagenes20 = readNPY('Imagenes_gris_20.npy');

%etiquetas

etiquetas = readNPY('labels.npy');

% creado con los datos en escala de grises 30 x 30
% crear el vector en blanco
datos = [];

%importar los primeros 100
for i = 1:2000
    img = [imagenes20(i,:,:)];
    vector = [img(:)]';
    datos = [datos; vector];
end 

% extraer las etiquetas de los primero 100
labels = etiquetas(1:2000);

% unir datos con las etiquetas transpuestas
dataset20 = [datos labels];     

% disminuir las dimensiones de la matriz de caracteristicas de las imagenes

