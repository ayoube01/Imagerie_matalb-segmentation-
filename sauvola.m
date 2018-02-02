function seuil=sauvola(Image_entree)
moyenne=mean(mean(Image_entree));
ecartype=std(Image_entree(:));
seuil=moyenne*(1+0.5*((ecartype/128)-1));
return