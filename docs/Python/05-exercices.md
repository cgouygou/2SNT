# Exercices Python
{{ initexo(0) }}

![](../images/scratch_vs_python.jpg){: .center width=480} 

Que vous soyez au lycée ou chez vous, que vous utilisiez Thonny, Capytale, ou un autre IDE, pensez à **sauvegarder** vos scripts Python, sous un *nom de fichier qui parle* (pas `snt.py` par ex.).


!!! example "{{ exercice() }}"
    Dans cet exercice, on reprend l'exercice 4 du DNB 2023 (épreuve de mathématiques) où l'on souhaite reproduire le motif suivant:

    ![](dnb1.png){: .center width=240} 

    Commencer par télécharger (en l'enregistrant dans votre dossier `\perso\prive\SNT`) ce fichier [dnb_2023.py](dnb_2023.py){:target="_blank"} .

    === "Partie 1" 
        Tout d'abord on veut reproduire un pétale qui a la forme du parallélogramme suivant:

        ![](dnb2.png){: .center width=240} 

        On rappelle le «bloc Scratch» donné dans le sujet:

        ![](dnb3.png){: .center width=240} 

        On utilise le module `turtle` de Python qui permet de dessiner. Dans ce module on a besoin des fonctions `forward` qui permet d'«avancer» du nombre de pas donné en paramètre et de la fonction `left` qui permet de tourner à gauche d'un angle donné en paramètre (la fonction `right` existe également bien entendu).

        1. Compléter le script donné dans le fichier en remplaçant les pointillés par les valeurs ou instructions adéquates pour traduire ce bloc Scratch en Python, en utilisant les variables `longueur` et `largeur` (dont vous pouvez changer les valeurs).
        
        2. Exécuter le script pour vérifier qu'il trace bien le motif «pétale».

    === "Partie 2"
        Il s'agit maintenant d'écrire une fonction Python `fleur` qui correspond au bloc Scratch suivant:

        ![](dnb4.png){: .center width=240}

        Écrire cette fonction à la suite de la fonction `petale` puis exécuter cette fonction pour obtenir le motif «fleur».

    === "Partie 3"
        Modifier la fonction `fleur` pour obtenir le motif:

        ![](dnb5.png){: .center width=240}
    === "Correction" 
        {{ correction(False, 
        "
        "
        ) }}