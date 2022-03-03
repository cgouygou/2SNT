# Tremblements de terre

L’objectif de cette activité est de réaliser une carte du monde répertoriant tous les tremblements de terre survenus durant une période récente, en précisant leur localisation et leur magnitude par un marqueur.

On utilisera les données ouvertes disponibles à l’adresse : [https://earthquake.usgs.gov/earthquakes/feed/v1.0/csv.php](https://earthquake.usgs.gov/earthquakes/feed/v1.0/csv.php){target="blank"}

!!! info "Consignes"

    1. À l'adresse ci-dessus, sur la partie droite de la page, choisir les données qui vous intéressent (magnitude, période): ouvrez le fichier csv en lien, et **copier le lien**.

    2. Dans ce fichier, repérer les colonnes indiquant les informations nécessaires (latitude, longitude, magnitude) en les numérotant (sachant que la colonne A correspond à 0, la colonne B à 1, etc.)

!!! example "Code à compléter"
    ```python linenums='1'
    ## Import des modules
    import folium
    import requests
    import csv
    import webbrowser

    ## Création d'une carte vierge
    carte_tremblements = folium.Map(location=[0,0], zoom_start=2)

    ## Importation des données au format csv
    url =

    csvfile = requests.get(url)
    csvfile = csvfile.content.decode('utf-8')
    tremblements_csv = csv.reader(csvfile.splitlines(), delimiter=',')
    header = next(tremblements_csv) # pour éviter la ligne d'entêtes


    ## Création de la carte
    for ligne in tremblements_csv :
        latitude = float(ligne[1]) # on a affecté à la variable latitude la conversion en nombre à virgule (float) de l'élement en colonne 1 de "ligne"

        # afficher un marqueur sur la carte_tremblements pour chaque couple (latitude, longitude) et un pop up avec la magnitude:


    ## Affichage de la carte
    carte_tremblements.save('maCarte.html')
    webbrowser.open('maCarte.html')
    ```

