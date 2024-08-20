# Carte interactive

## 1 - Créer une carte avec le module folium de Python

Le module `folium` de Python permet de créer une carte au format `html` grace à [OpenStreetMap](https://www.openstreetmap.fr/){:target="_blank"} et le module `webbrowser` permet de l'afficher dans un navigateur.

Voici un modèle de programme à copier-coller dans l'IDE Thonny, qui va créer une carte représentant l'adresse d'une personne vivant en France (choisie au hasard) et la zone de 1 km à l'intérieur de laquelle elle était autorisée à se déplacer pendant le premier confinement de 2020:

<!-- **⚠️ : si cela ne fonctionne pas, travaillez dans Capytale (application de l'ENT) en suivant [ce lien](https://capytale2.ac-paris.fr/web/c/8f91-2318806){:target="_blank"}.** -->

```python linenums='1'
import folium
import webbrowser

lieu1 = [48.856389, 2.352222]
lieu2 = [48.870144, 2.316486]

c = folium.Map(location=lieu1, zoom_start=13)

folium.Marker(location=lieu1, popup="Hôtel de Ville").add_to(c)
folium.Marker(location=lieu2, popup="Qui habite ici?").add_to(c)
folium.Circle(location=lieu2, radius=1000, fill="True").add_to(c)

c.save('ma_carte.html')
webbrowser.open('ma_carte.html')
```

!!! info "Explication du code"
    === "Lignes 1 et 2"
        Ces instructions servent à aller chercher les bons outils pour créer et afficher une carte, c'est-à-dire les modules `folium` et `webbrowser`.
    
    === "Lignes 4 et 5"
        On crée deux variables `lieu1` et `lieu2` qui vont contenir les coordonnées GPS d'endroits qu'on va utiliser par la suite. Il faut **respecter la syntaxe** : entre crochets, coordonnées séparées par une virgule (d'abord la latitude, ensuite la longitude, au format décimal à point).
    
    === "Ligne 7"
        On crée une carte stockée dans une variable `c` à l'aide de la fonction `folium.Map`. Ses paramètres sont:

        - `location` : l'endroit où l'on souhaite centrer la carte;
        - `zoom_start`: le niveau de zoom souhaité (par exemple, Monde : 2, France : 7, Angoulême: 14)

    === "Lignes 8, 9 et 10"
        - **ligne 8**: on ajoute un **marqueur** sur la carte au lieu souhaité contenu dans la variable `lieu1`, avec un texte `popup` qui s'affiche en **cliquant** sur le marqueur;
        - **ligne 9**: on ajoute un **marqueur** sur la carte au lieu souhaité contenu dans la variable `lieu2`, avec un texte `popup` qui s'affiche en **cliquant** sur le marqueur;
        - **ligne 10**: on ajoute un **cercle** centré au lieu souhaité  contenu dans la variable `lieu2`, en précisant le rayon (`radius`)

    === "Lignes 13 et 14"
        On enregistre la carte `c` dans un fichier `html` qu'on affiche ensuite dans le navigateur par défaut.


!!! tip "Pour s'amuser avec les icônes"
    === "Changer la couleur"
         On peut changer la couleur de l'icône du marqueur en ajoutant un paramètre `icon` à la fonction `folium.Marker` ainsi:
        ```python
        folium.Marker(location=lieu, popup="Qui habite ici?", icon=folium.Icon(color='red')).add_to(c)

        ```
        
    === "Icônes de base (Bootstrap)"

        On peut changer l'icône du marqueur en ajoutant un paramètre `icon` à la fonction `folium.Marker` ainsi:
        ```python
        folium.Marker(location=lieu, popup="Chez moi!", icon=folium.Icon(icon="home")).add_to(c)
        ```

        Pour changer l'icône, remplacer `home` par l'un des noms suivants (ou consulter [le site de Bootstrap](https://getbootstrap.com/docs/3.3/components/#glyphicons){:target="_blank"}  ):
        `cloud` `star` ` music` ` heart` ` home` ` user` ` film` ` cog` ` road` ` time` ` ok` ` remove` ` off` ` play` ` camera` ` download` ` picture` ` question-sign` ` fire` ` plane` ` warning-sign` ` bell` ` thumbs-up` ` wrench` ` globe` ` euro` ` usd` ` signal` ` tree-conifer` ` phone` ` envelope`.
    
    === "Icônes FontAwesome"

        D'autres icônes disponibles sur [le site de FontAwesome](https://fontawesome.com/icons){:target="_blank"} .

        **Attention:** la syntaxe est un peu plus compliquée, il faut ajouter un préfixe :

        ```python
        folium.Marker(location=[45.653478,0.178083], popup="Mon lycée!", icon=folium.Icon(icon="graduation-cap", prefix="fa", color='red')).add_to(c)

        ```
        
## 2 - Carte personnelle

!!! example "À vous de jouer!"
    Créez votre propre carte, en indiquant par des marqueurs:

    1. votre adresse personnelle;
    2. le lycée;
    4. au moins deux autres lieux au choix (votre restaurant préféré, un lieu d'activité extra-scolaire par exemple);

    Essayez de varier les couleurs, les icones, et n'oubliez pas de changer les pop-ups.

    **Conseil:** stockez les coordonnées de ces lieux dans des variables portant des noms pertinents (`maison`, `lycee`, etc.).

## 3 - Énigme :fire:

Un trésor a été caché quelque-part dans le nord de la Nouvelle-Aquitaine. Il émet un signal se propageant à la vitesse du son (340 m/s) et détectable à plus de 400 km...

Voici un tableau des différents temps de propagation du signal enregistrés :

|Ville|Temps| |Ville|Temps|
|:-----|:-----|:-----|:-----|:-----|
|La Rochelle | 4 min 45 s||Périgueux | 4 min 38 s|
|Saintes | 1 min 44 s|| Limoges | 6 min 45 s|
|Cognac | 1 min 24 s ||Montendre | 0 min 53 s|
|Ruffec | 4 min 00 s ||Royan |2 min 26 s|

**Dans quelle commune se situe très certainement le trésor?**

??? tip "Indications"
    === "Distance"
        À l'aide de la vitesse du signal et du temps de propagation, vous devriez pouvoir récupérer à quelle distance de chaque ville se situe le trésor...

        N'oubliez pas : distance = temps x vitesse
    
    === "Cercle"
        Si le trésor se situe à 100km d'une ville, alors il est sur un cercle centré en cette ville, de rayon 100km...
    
    === "Point trop n'en faut"
        Il n'est peut-être pas nécessaire d'utiliser **toutes** les villes...


## 4 - Insertion d'une carte dans un fichier HTML

Une fois la carte souhaitée réalisée, et sauvegardée par exemple dans le ficher `ma_carte.html`, on peut l'insérer dans un fichier HTML par l'instruction suivante:

```html
<iframe src="ma_carte.html" width="600" height="450" ></iframe>
```

où bien entendu on peut préciser la largeur (`width`) et la hauteur (`height`) souhaitées en pixels.