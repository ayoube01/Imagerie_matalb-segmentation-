#bernsen function
function seuil = bernsen(Image_entree)
maxi=max(max(Image_entree));
mini=min(min(Image_entree));
seuil=(maxi+mini)/2;
return
