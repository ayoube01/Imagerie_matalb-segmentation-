function Image_sortie = otsu2(Image_entree)
[n,m]=size(Image_entree);
histogramme=zeros(256,1);
 for i=1:n
     for j=1:m
     histogramme(Image_entree(i,j)+1)=histogramme(Image_entree(i,j)+1)+1;
    end
 end
 w1num=0;
 w1den=0;
 w1=[];
 w2num=0;
 w2den=0;
 w2=[];
 Vinter=[]
 for i=1 :255
     Uc1nom=0;
     Uc1den=0;
     Uc1=0;
     Uc2nom=0;
     Uc2den=0; 
     Uc2=0;
 for j=0:i
      Uc1nom=Uc1nom+j*histogramme(j+1);
   end

   for j=0:i
    Uc1den=Uc1den+histogramme(j+1);
   end

     Uc1=Uc1nom/Uc1den;

   for j=i+1:255
        Uc2nom=Uc2nom+j*histogramme(j+1);
   end
   for j=i+1:255
      Uc2den=Uc2den+histogramme(j+1);
   end

    Uc2=Uc2nom/Uc2den;
      
    for j=0:i
        w1num=w1num+histogramme(j+1);
    end
    for j=0:255
        w1den=w1den+histogramme(j+1);
    end
    w1(i)=w1num/w1den;
    
    for j=i+1:255
        w2num=w2num+histogramme(j+1);
    end
    for j=0:255
        w2den=w2den+histogramme(j+1);
    end
    w2(i)=w2num/w2den;
    
    
    
    Vinter(i)=w1(i)*w2(i)*(Uc1-Uc2);
    
    
    
 end
V=max(Vinter)
Image_sortie = seuil_manuel(Image_entree,V);
V=max(Vinter)
Vinter
