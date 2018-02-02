function  Image_sortie = isodata1(Image_entree,epsilon)
[n,m]=size(Image_entree);
histogramme=zeros(256,1);
 for i=1:n
     for j=1:m
     histogramme(Image_entree(i,j)+1)=histogramme(Image_entree(i,j)+1)+1;
    end
 end
        

S(1)=1;
%S(2)=254;
S(2)=round(rand*254)

while S(2)-S(1)>epsilon
    
Uc1nom=0;
Uc1den=0;
Uc1=0;
Uc2nom=0;
Uc2den=0;
Uc2=0;
 for i=0:S(2)
      Uc1nom=Uc1nom+i*histogramme(i+1);
   end

   for i=0:S(2)
    Uc1den=Uc1den+histogramme(i+1);
   end

     Uc1=Uc1nom/Uc1den;

   for i=S(2)+1:255
        Uc2nom=Uc2nom+i*histogramme(i+1);
   end
   for i=S(2)+1:255
      Uc2den=Uc2den+histogramme(i+1);
   end

    Uc2=Uc2nom/Uc2den;
   S(1)=S(2)
   S(2)=(Uc1+Uc2)/2;
   
end

Image_sortie = seuil_manuel(Image_entree,S(1));
end 

