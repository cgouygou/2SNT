# Une image simple pour commencer


Une première approche pour comprendre comment sont créées les images sur les ordinateurs est de s’intéresser aux images en noir et blanc, comme celle ci-dessous.

[![](gimp-logo.bmp){: .center}](gimp-logo.PBM)

Télécharger l'image en cliquant dessus, puis l'ouvrir avec le bloc-notes de Windows.


Cette image est au format [pbm](https://fr.wikipedia.org/wiki/Portable_pixmap#PBM). C'est un simple fichier texte qui contient:

- un nombre magique (pour indiquer le format de l'image, ici P1 pour `pbm`);
- les dimensions de l'image en pixels : largeur et  hauteur;
- les pixels: blanc (0) ou noir (1)


Un autre exemple? Copiez-collez le code ci-dessous et enregistrez-le avec le bloc-notes dans un fichier `mystere.pbm`. Visualisez ensuite l'image en ouvrant le fichier avec le logiciel GIMP.

```
P1
18 13
11111100000110001111110011111001110111101111111110110111101111111110101111011111
11111101111101111111111001111101111111110101111101111111101101111101111111011101
11101011110011101111011011001111101111011100111110011111100011000001111111
```

??? info "Astuce"
    En règle générale, même si ce n'est pas obligatoire, on code ce fichier en respectant le nombre de pixels par ligne pour que l'image soit plus «visible».


<!-- !!! example "À vous de jouer"
    - Ouvrir le bloc-notes de Windows (dans les accessoires), puis copier le code précédent. Ne pas oublier en première ligne le nombre magique!
    - Enregistrer le document sous le nom `a.pbm`.
    - Ouvrir ensuite ce fichier avec le logiciel GIMP.

 -->


!!! example "Exercice"
    On veut désormais construire une image PBM de l'image ci-dessous, de taille 10$\times$10. Pour cela, à partir du dessin, noircissez toutes les cases qui contiennent majoritairement du noir (enfin, à vous de juger) pour obtenir un dessin pixellisé de la figure initiale. Puis créer un fichier `smiley.pbm`.

    ![](smiley_grille.PNG){: .center .w640} 

    