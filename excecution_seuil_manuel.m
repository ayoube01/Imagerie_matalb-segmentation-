Image =imread('house.pgm');
%im=rgb2gray(Image);%si c'est pas une image gris
%imshow(seuil_manuel(im,60));
%imshow(seuil_manuel_moyenne(im));
%imshow(seuil_manuel_median(im));
%imshow(isodata1(im,30));
otsu1_1(Image)
%imshow(otsu2(Image))%ne marche pas
%imshow(Image)
%imshow(seuillage_moyenne(Image));
%imshow(seuillage_moyenne_constante(Image,5));
%imshow(seuillage_mediane(Image));
%imshow(seuillage_mediane_constante(Image,5));


