# Formats ouverts

!!! abstract "Consigne"
    Compte-rendu à produire et rendre sur Moodle.

## 1- Formats de fichiers

{{ initexo(0) }}

!!! example "{{ exercice() }}"
    1. Ouvrir le bloc-notes de Windows (le chercher dans les applications) et y taper le texte «Marguerite de Valois». Enregistrer le fichier sous le nom «test.txt» dans votre dossier `SNT`.

    2. Ouvrir LibreOffice Writer et y taper le texte «Marguerite de Valois». Enregistrer le fichier sous le nom «test.odt» dans votre dossier `SNT`.

    3. Ouvrir votre dossier `SNT` et noter les tailles en octets de ces deux fichiers (chercher les propriétés des fichiers en faisant un clic droit dessus). Que constate-t-on? Comment l'expliquer?

    4. Chercher ce qu'est le **format** d'un fichier.


!!! info "Ouvert ou fermé?"
    On appelle format « ouvert » un format dont les spécifications techniques ne sont pas encombrées d’entraves techniques ou légales à son exploitation dans quel que logiciel que ce soit. Ces spécifications techniques sont la « recette » permettant au programmeur d’écrire des programmes capables d’encoder ou décoder des données dans ce format.

    *Source:* [http://libre.guillaumeponce.org/qu-est-ce-qu-un-format-ouvert](../../data/formats_ouverts_guillaume_ponce.pdf){:target="_blank"}

!!! example "{{ exercice() }}"

    Reproduire et compléter à l'aide de recherches sur le Web (ou en lisant l'article en lien ci-dessus) le tableau suivant avec les types de fichiers:

    ![](type_fichier.jpg){align=right} 




    |  | Ouvert | Fermé |
    |:-:|:-:|:-:|
    | Image/graphisme |||
    | Audio |||
    | Vidéo |||
    | Bureautique |||
    | Archives |||
    | Langages de description |||




## 2- Open Data

### 2.1 - Tremblement de Terre

!!! example "{{ exercice() }}"
    Trouvez [ici](https://earthquake.usgs.gov/earthquakes/feed/v1.0/csv.php){:target="_blank"}  le lieu d'un séisme de magnitude supérieure à 4.5 qui a eu lieu la semaine dernière.



### 2.2 - Qui est dans l'ISS ?

!!! example "{{ exercice() }}"
    1. Rechercher ce qu'est un API.

        Consultez ensuite l'adresse  [http://api.open-notify.org/astros.json](http://api.open-notify.org/astros.json){:target="_blank"}  dans votre navigateur.

    2. Quel est le format de donnée enregistré dans cette page?

    2. Combien de personnes sont actuellement dans l’ISS? Comment s’appellent-ils?

### 2.3 - ISS avec Python

Cet API peut s'interroger avec Python en lançant une requête `GET`.

Copiez-collez le code ci-dessous dans votre IDE (EduPython au lycée), en complétant la ligne 4 avec l'url (entre guillemets) que l'on souhaite consulter (c'est-à-dire celle de l'exercice précédent...).

```python
import json
import requests

url = 
rep = requests.get(url)
print(rep)
```

!!! example "{{ exercice() }}"
    Normalement, vous devez obtenir une `<Response [#]>` qui indique que la requête a abouti correctement... Si vous obtenez une `<Response [404]>`, c'est qu'il y a un souci... Quel est le numéro de la réponse?

La variable `rep` est complexe et contient tout un tas d'informations sur cette requête. On va s'intéresser à son attribut `content` et le traduire au format [`json`](https://fr.wikipedia.org/wiki/JavaScript_Object_Notation){:target="_blank"} - un format qui permet de représenter des données **structurées** pour qu'il soit exploitable.

Ajoutez les lignes suivantes à votre programme, où la nouvelle variable `data` est un **dictionnaire**, qui comporte des clés d'entrée (keys) et des valeurs (values).

```python
data = json.loads(rep.content.decode('utf-8')) # on charge le contenu de rep dans une variable appelée data, au format dictionnaire
print(data.keys())             # on affiche les clés du dictionnaire
print(data['number'])          # on affiche la valeur associée à la clé 'number'
```


!!! example "{{ exercice() }}"
    2. Quels sont les 3 clés de ce dictionnaire?
    3. Quelle est la valeur de la clé `number`? Que représente-t-elle?
    4. Afficher les valeurs des autres clés.

La valeur associée à la clé `people` est également un dictionnaire. On peut parcourir ce dictionnaire pour afficher les données sous forme plus «humaine».

Ajoutez ces lignes:

```python
for p in data['people']:
    print(p['name'], "dans le vaisseau", p['craft'])
```

Enfin on peut traiter ces données pour les filtrer, par exemple pour connaître le nombre d'astronautes dans l'ISS[^1]. Pour cela, on va ajouter une instruction conditionnelle sur `craft` et compter avec une variable compteur `astro_ISS`.

[^1]: Il est bien évident que sur un jeu de données aussi court qu'ici, cela n'a pas d'intérêt. Mais en général, les bases de données contiennent énormément d'entrées... Les compter à la main n'est pas possible.

!!! example "{{ exercice() }}"
    Modifiez ainsi votre programme, en complétant les lignes 1, 3 et 4 ci-dessous: 

    ```python
    astro_ISS = 
    for p in data['people']:
        if p['craft'] == :
            astro_ISS = 
    print("Il y a", astro_ISS, "personnes dans la station ISS.")

    ```

