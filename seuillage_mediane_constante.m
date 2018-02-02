function Image_sortie = seuillage_mediane_constante(Image_entree,constante)
[n,m]=size(Image_entree);
Image_sortie=zeros(n,m);
for i=2:n-1
    for j=2:m-1
        mediane=median(median(extraire_matrice(Image_entree,i,j)));
       
        if Image_entree(i,j)>mediane-constante
            Image_sortie(i,j)=255;
        else
            Image_sortie(i,j)=0;
        end
    end
end
return