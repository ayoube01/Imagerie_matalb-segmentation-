function Image_sortie = seuil_manuel(Image_entree,seuil)
 
 [n,m]=size(Image_entree);
 Image_sortie=zeros(n,m)
 for i=1:n
     for j=1:m
         if (Image_entree(i,j)<seuil)
             Image_sortie(i,j)=0;
         else 
             Image_sortie(i,j)=250;
         end
     end
 end
end

             