# Système binaire

## 1- Jouons à la marchande

!!! Info "Principe du «jeu»"
    - Par groupe de 3, désigner un.e marchand.e et deux acheteur.euse.s.
    - Le ou la marchand.e doit annoncer une somme de £eibits à payer. Elle ne rend pas la monnaie.
    - Les acheteurs disposent devant eux d'un jeu de 8 billets de 1, 2, 4, 8, 16, 32, 64 et 128 £eibits (un et un seul de chaque). Ils doivent laisser face visible le(s) billet(s) nécessaire(s) pour payer la somme demandée et retourner (sans les changer de place) ceux qui ne servent pas.

![](jeu_billets.png){: .center}

Par exemple, voici comme on pourrait payer 100 £eibits:

![](100.png){: .center}

!!! Example "À vous de jouer!"
    1. À tour de rôle, choisir quelques montants et les payer. Y a-t-il plusieurs choix de billets possibles pour un montant donné?
    2. Quel montant maximum peut-on payer?
    3. Essayer de trouver un montant impossible à payer.


## 2- Bilan

<p align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/VRdp_vaNRoY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>

## 3- Le parachute de Persévérance

Activité à consulter ici : [https://cgouygou.github.io/2SNT/Projets/Perseverance/perseveranceSNT/](https://cgouygou.github.io/2SNT/Projets/Perseverance/perseveranceSNT/)

## 3- Conversions avec Python

### Du décimal vers le binaire

Pour obtenir l’écriture binaire d’un nombre entier écrit en décimal, par exemple 2022, il suffit de taper dans un terminal:

```python
bin(2022)
```

Faites-le ci-dessous:

{{ terminal() }}

??? note "Remarque"
    Attention, ce qui est renvoyé par cette fonction est une chaîne de caractères (entre simples guillemets). L’écriture en binaire de 2022 est donc 11111100110. Le `0b` indique que c’est... du binaire.

### Du binaire vers le décimal

C'est encore plus simple. Il suffit de taper dans un terminal le nombre binaire précédé de `0b`. Vérifiez que 101010 en binaire correspond à 42 (le sens de la vie).

{{ terminal() }}


!!! question "Question"
    === "Énoncé"
        Pour répondre aux questions suivantes, effectuer les conversions nécessaires dans le terminal ci-dessus et faites-en une capture d'écran à insérer dans votre compte-rendu.
        
        1. Quel est le plus grand nombre que l'on peut écrire avec 16 bits?
        1. Choisir 3 nombres. Les convertir en binaire.
        2. Calculer les doubles de ces 3 nombres et les convertir en binaire.
        3. Comment multiplie-t-on les nombres par 2 en binaire?

<!--     === "Solution"
        Il suffit de décaler l'écriture binaire vers la gauche en ajoutant un `0` à droite. -->

