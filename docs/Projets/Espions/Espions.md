#  Espions mais pas trop...

!!! abstract "Contexte"
	Les services du contre-espionnage angoumoisin (le SCA) ont intercepté un message d'espions bordelais qui révèle qu'un échange de documents top-secrets a eu lieu quelque part dans le vieil Angoulême... À vous de retrouver le lieu de l'échange, pour pouvoir consulter les bonnes caméras de surveillance et de démasquer ces espions...

	Pour vous aider, le SCA a également détecté les positions des smartphones des deux espions (ce sont des espions débutants) quelques instants avant l'échange... Ces positions sont des trames NMEA à disposition dans les fichiers [`spy1.nmea`](spy1.nmea) et [`spy2.nmea`](spy2.nmea) fournis (cliquez dessus pour les télécharger).
	

!!! info "Consignes / Indications"

	La lecture des trames NMEA étant compliquée, les fonctions pour les déchiffrer sont fournies (dans la section **Lecture et importation des données au format texte**).

	On fournit également une fonction `affiche_parcours()` permettant d'afficher le parcours issu d'un fichier `.nmea`.

	Votre travail:
	
	1. Définir la variable `depart` (ligne 37) avec les coordonnées du centre de la carte, entre crochets (à vous de trouver des coordonnées cohérentes).
	2. Compléter la ligne 40 `positions_spy1 = extract_positions()` en plaçant dans les parenthèses le nom du bon fichier (entre guillemets)
	3. Compléter la ligne 41 : regarder attentivement les paramètres de la fonction `affiche_parcours`...
	3. Une fois le parcours du premier espion tracé sur la carte, copier-coller et adapter les lignes 40 et 41 pour afficher également le parcours du deuxième espion (d'une autre couleur).
	4. Où a eu lieu l'échange, sachant que pour éviter les soupçons les espions se sont garés à deux endroits différents avant de terminer à pied?


Le code à copier-coller dans l'IDE (EduPython):

```python linenums='1'
# Import des modules
import folium
import webbrowser

# Lecture et importation des données au format texte
def conversion(coord):
    '''convertit des coordonnées issues d'une trame NMEA au format DD'''
    card = coord[1]
    DM = float(coord[0])/100
    DD = int(DM) + (DM-int(DM))*100/60
    if card in {'S', 'W'}:
        DD = - DD
    return DD

def extract_positions(file):
    '''extrait les coordonnées GPS contenues dans le fichier "file" '''
    positions = []
    with open(file, 'r') as f:
        for trame in f.readlines():
            data =  trame.split(',')
            if data[0] == '$GPGGA' and data[1] != '':
                positions.append((conversion(data[2:4]), conversion(data[4:6])))
    return positions

# Affichage des positions
def affiche_parcours(positions, carte, couleur):
    for k in range(len(positions)):
        if k%10 == 0:
            folium.Circle(
                radius=2,
                location=positions[k],
                color=couleur,
                fill=True,
            ).add_to(carte)

# Création de la carte
depart = 
carte_espions = folium.Map(location=depart,zoom_start=16)

positions_spy1 = extract_positions()
affiche_parcours(positions_spy1, , 'red')

carte_espions.save('espions.html') 
webbrowser.open('espions.html')

```
