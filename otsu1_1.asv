function Image_sortie = otsu1_1(Image_entree)


% Taille de l'image %
[Colonne Ligne] = size(Image_entree);

% Nb de pixel dans l'image %
NBTotal = Colonne*Ligne ;

% Calcul de l'histogramme %
Histogramme = imhist(Image_entree)';

% Probabilité de chaque NdG %
Proba= Histogramme/NBTotal;

for i = 1 : 255
    
    % Calcul de la probabilité des classes %
    Proba1 = Proba(1 : i);
    Proba2 = Proba(i+1 : 256);
    P1 = sum(Proba1);
    P2 = sum(Proba2);
   
    % Calcul de la moyenne des classes %
    n1 = 0:i-1;
    n2 = i:255;
    Moy1 = sum( n1.*Proba1)/P1;
    Moy2 = sum( n2.*Proba2)/P2;
   
    % Calcul de la variance des classes %
    Var1 = sum(((n1 - Moy1).^2).*Proba1);
    Var2 = sum(((n2 - Moy2).^2).*Proba2);

    VarianceIntraClasse(i) = Var1 + Var2; 
   
end

% Détermination du seuil %
[Val,Indice] = min(VarianceIntraClasse(1:255)); 
level = (Indice-1)/255


% BINARISATION %
BW1 = im2bw(Image_entree,level);
BW1 = BW1*255;
figure;
imshow(BW1);
