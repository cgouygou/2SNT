# Thème 06: Localisation et cartographie

![](../images/logo_carto.png){: .center} 


frise histo tribu jbs ?


## 1- Coordonnées géographiques

Tout point de la Terre se situe à l'intersection de deux cercles: un **parallèle** (à l'Équateur) et un **méridien** (cercle passant par les pôles).

![](images/coordonneesgeo.png){: .center}

Ces cercles forment des angles par rapport au centre de la Terre : la latitude et la longitude. Ces angles sont les coordonnées géographiques (ou GPS par abus de langage) de ce point.

Les angles se mesurent en degrés, soit au format décimal (avec en général au moins 6 chiffres après la virgule) ou bien en subdivisions de degrés: la minute d'arc qui vaut 1/60 de degré et la seconde d'arc qui vaut 1/60 de minute.

Pour un même lieu, il y a donc plusieurs formats d'écriture de ses coordonnées. Les deux principaux sont:

- Degrés, minutes, secondes (DMS): par exemple 45° 26' 14'' N , 12° 20' 5'' E
- Degrés décimaux (DD): par exemple 45.4372222, 12.3347222

!!! info "Quelques exemples"
	|| Paris | New-York |Rio de Janeiro| Sydney |
	|:-:|:-----:|:-----:|:-----:|:-----:|
	|DMS|48°51'24.11" N, 2°21'5.26" E| 40°42'45.2" N, 74°0'21.65" O| 22°54'39.6" O, 43°12'33.84" S | 33°51'22" S, 151°11'33" E|
	|DD| 48.856697, 2.351461| 40.704222, -74.006014|	-22.911 , -43.2094 | -33.8561, 151.1925|
	
??? info "Conversions"
	=== "de DMS vers DD"
		Prenons par exemple la latitude de Paris. On obtient en degrés 48+51/60+24.11/3600 = 48.856697
		
		On compte positivement car la position par rapport à l'Équateur est N pour Nord (on compte négativement pour une position S pour Sud, comme Rio ou Sydney).
		
		Prenons par exemple la longitude de New-York. On obtient en degrés 74+0/60+21.65/3600 = 74.006014
		
		On compte négativement  car la position par rapport au méridien de Greenwich est O pour Ouest (on compte positivement pour une position E pour Est, comme Paris ou Sydney).
		
	=== "de DD vers DMS"
	
		Prenons par exemple la latitude de Rio de Janeiro : -22.911
		
		- Le signe moins indique que la position est S
		- La partie entière donne les degrés (22)
		- On mutliplie la partie décimale par 60 : 0.911x60=54.66 dont la partie entière donne les minutes (54)
		- On recommence avec la partie décimale du précédent pour obtenir les secondes : 0.66x60=39.6
		
		On obtient donc en DMS 22°54'39.6" S.

<!--	=== "Avec Python"-->
<!--		On peut créer des fonctions pour automatiser ces calculs:-->
<!--		-->

## 2- GPS

### 2.1- Fonctionnement
<p style="text-align: center;">

<span>Vidéo d'explication du fonctionnement du GPS européen : Galiléo</span>

<iframe width="560" height="315" src="https://www.youtube.com/embed/e79tSIpLiDk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>
<!--??? question "-->

??? tip "Application smartphone"
	L'application Satstat permet de repérer les satellites en communication avec le smartphone et d'obtenir des informations complètes de localisation.

	![](images/satstat.png){: .center} 
### 2.2- Trame NMEA

Les différents composants d’un appareil électronique (ex : un téléphone mobile) communiquent par des protocoles normalisés. Ainsi, les puces GPS qui effectuent les calculs de positionnement envoient leurs résultats présentés sous la forme d'une « phrase » dont la forme est strictement codifiée. On appelle ces phrases des trames, la plus courante est la [trame NMEA 0183](https://fr.wikipedia.org/wiki/NMEA_0183){:target="_blank"}  .

![](images/trameNMEA.png){: .center} 
Le développeur d’une application (par exemple : la galerie photo, parcours de running, un jeu de capture de Pokémons...) souhaitant utiliser la position de l’utilisateur sait qu’il pourra exploiter cette trame pour en déduire les renseignements sur la position.


??? tip "Appication smartphone"
	L'application **NMEA Tools** permet d'enregistrer et de sauvegarder des trames NMEA. Important pour récupérer la trace d'un trajet effectué.

	![](images/NMEATools1.png){: .center} 



## 3- Services de cartographie

**Géoportail**  est  un  site  public  français permettant l’accès à  des  données  géographiques  ou  géolocalisées. L’utilisateur peut superposer sur un fond de carte (carte de l’Institut national de l’information géographique et forestière, photographie aérienne, carte du relief) différents couches de données(carte des transports, emplacement  des hôpitaux,  départements,  etc...) de  manière  à  créer  une  carte  numérique  personnalisée. Géoportail permet aussi la localisation, le calcul de distances, de surfaces et d’itinéraires.

**OpenStreetMap**  est un service  de  cartographie  libre  et  collaboratif  qui  permet  de visualiser, de modifier et d’utiliser des données géographiques. Il propose également le calcul  d’itinéraire.  Chacun  peut  contribuer  à OpenStreetaMap  en ajoutant  des informations manquantes on en corrigeant des erreurs.
