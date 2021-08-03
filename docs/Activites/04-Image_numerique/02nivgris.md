# Niveaux de gris

Avec le noir et blanc, on ne va pas très loin... Intéressons-nous maintenant aux images en niveau de gris, comme [celle-ci](snt.pgm), à télécharger et ouvrir deux fois: avec le bloc-notes d'une part et avec GIMP d'autre part.

!!! example "Analyse du code"
    === "Questions"
        1. Quel est le nombre magique de ce format `pgm`?
        2. Comment interpréter le nombre 15 en ligne 4?
        3. Comment code-t-on les différents niveaux de gris?
        4. Comment augmenter la qualité de l'image?
    
    === "Réponses"
        1. C'est P2.
        2. C'est l'intensité maximale de gris. 
        3. Avec tous les nombres entiers entre 0 et 15, soit 16 au total.
        4. Il suffit d'augmenter les niveaux de gris avec par exemple 255 en ligne 4 et en codant les pixels avec les entiers de 0 à 255.

!!! example "Exercice"
    Créez une image au format `pgm` contenant votre prénom, chaque lettre devant être dans un niveau de gris différent.