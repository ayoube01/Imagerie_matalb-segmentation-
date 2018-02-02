function Image_sortie = seuillage_bernsen(Image_entree)
[n,m]=size(Image_entree);
Image_sortie=zeros(n,m);
for i=2:n-1
    for j=2:m-1
        seuil=bernsen(extraire_matrice(Image_entree,i,j));
       
        if Image_entree(i,j)>seuil
            Image_sortie(i,j)=255;
        else
            Image_sortie(i,j)=0;
        end
    end
end
return