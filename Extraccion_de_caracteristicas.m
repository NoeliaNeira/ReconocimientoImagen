function vector_medio=Extraccion_de_caracteristicas(mascara, imagen_color)


    %pasoas a double,
    imagen_color_double=im2double(imagen_color);
    mascara_double=im2double(mascara);

   R=imagen_color_double(:,:,1);
   G=imagen_color_double(:,:,2);
   B=imagen_color_double(:,:,3);

    %sera o valor de R da fruta e a mascara a 1 para coller a fruta
   medio_R=mean(R(mascara_double==1));%A mascara ten que estar a 1, que sera cando haxa fruta
   medio_G=mean(G(mascara_double==1));
   medio_B=mean(B(mascara_double==1));

   vector_medio= [medio_R medio_G medio_B];
end
