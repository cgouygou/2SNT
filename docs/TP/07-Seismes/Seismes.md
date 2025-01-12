# Tremblements de terre

L’objectif de cette activité est de réaliser une carte du monde répertoriant tous les tremblements de terre survenus durant une période récente, en précisant leur localisation et leur magnitude par un marqueur.

On utilisera les données ouvertes (déjà utilisées à l'activité [Formats ouverts](https://cgouygou.github.io/2SNT/Activites/02-Formats_ouverts/Formats_ouverts/){:target="_blank"}   disponibles à l’adresse : [https://earthquake.usgs.gov/earthquakes/feed/v1.0/csv.php](https://earthquake.usgs.gov/earthquakes/feed/v1.0/csv.php){target="blank"}

!!! info "Consignes"
    1. Copier-coller le code ci-dessous dans un nouveau document Thonny, et l'enregistrer tout de suite sous le nom `seismes.py`.

    2. À l'adresse ci-dessus, sur la partie droite de la page, **choisir** les données qui vous intéressent (magnitude, période) et **copier le lien** (clic-droit sur le lien). Le coller ligne 11, **entre guillemets**, pour l'affecter à la variable `url`.

    3. Ouvrir ce même fichier avec LibreOffice Calc et repérer les colonnes indiquant les informations nécessaires (latitude, longitude, magnitude) en les **numérotant** (sachant que la colonne A correspond à 0, la colonne B à 1, etc.)

    4. Ligne 15 du code, on crée un tableau `tremblements_csv` comportant les données issues du fichier csv. Chaque ligne de ce tableau correspond donc à un séisme.
        
        Ligne 20, on parcourt chaque ligne de ce tableau à l'aide d'une boucle `for` et on va récupérer les latitude, longitude et magnitude contenues dans chaque ligne.
        
        Ligne 21 on crée une variable `latitude` contenant la valeur située dans la ligne du tableau, en colonne **numérotée 1** et convertie en `float` (nombre à virgule).
        
        Créer une variable `longitude` en ligne 22, de la même façon, en précisant le numéro de la colonne correspondante (cf. question 3.). 

    5. Créer en ligne 23 une variable `magnitude` de la même façon, mais en la convertissant en `str` (chaîne de caractères) au lieu de `float`.

    6. Ajouter enfin ligne 24 un marqueur sur la carte `carte_tremblements`, au lieu correspondant aux coordonnées GPS récupérées dans les variables `latitude` et `longitude`, avec un pop-up indiquant la magnitude du séisme. S'inspirer des cartes réalisées dans le projet précédent [Carte au trésor](https://cgouygou.github.io/2SNT/Projets/Tresor/tresor/){:target="_blank"} .

    7. Exécuter le code!



!!! example "Code à compléter"
    ```python linenums='1'
    ## Import des modules
    import folium
    import requests
    import csv
    import webbrowser

    ## Création d'une carte vierge
    c = folium.Map(location=[0,0], zoom_start=2)

    ## Importation des données au format csv
    url =

    csvfile = requests.get(url)
    csvfile = csvfile.content.decode('utf-8')
    tremblements_csv = csv.reader(csvfile.splitlines(), delimiter=',')
    header = next(tremblements_csv) # pour éviter la ligne d'entêtes


    ## Création de la carte
    for ligne in tremblements_csv :
        latitude = float(ligne[1]) 




    ## Affichage de la carte
    c.save('carte_seismes.html')
    webbrowser.open('carte_seismes.html')
    ```

