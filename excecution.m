clear all; close all;
Image =imread('100.jpg');
im=rgb2gray(Image);%si c'est pas une image gris
%imshow(seuil_manuel(im,60));
%imshow(seuil_manuel_moyenne(im));
%imshow(seuil_manuel_median(im));
%imshow(isodata1(im,30));
%imshow(otsu1(im));%ne marche pas 
%imshow(otsu2(im))%ne marche pas
%imshow(Image)
%imshow(seuillage_moyenne(Image));
%imshow(seuillage_moyenne_constante(Image,20));
%imshow(seuillage_mediane(Image));
%imshow(seuillage_mediane_constante(Image,10));
%imshow(seuillage_bernsen(Image));
%imshow(seuillage_niblack(Image));
%imshow(seuillage_sauvola(Image));donne une image jsut grise c'est bizarre 
imshow(isodata1(Image,30))
