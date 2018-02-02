function seuil=niblack(Image_entree)
moyenne=mean(mean(Image_entree));
ecartype=std(Image_entree(:));
seuil=moyenne+0.2*ecartype;
return