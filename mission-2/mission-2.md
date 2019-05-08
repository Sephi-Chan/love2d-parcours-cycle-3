# Mission 2. Dessiner des rectangles et des cercles à l'écran

Dans cette mission, tu vas commencer à programmer le moteur de jeu. La première étape va être de dessiner des choses à l'écran.

Dans un vrai jeu, on dessine des images, parfois en 3D. Comme tu es débutant et que tu n'as pas beaucoup de temps pour dessiner ces images, tu vas commencer par dessiner des figures géométriques simples, comme des rectangles et des cercles.


## Comprendre le fonctionnement d'un jeu vidéo

Dans un jeu vidéo, que ce soit un jeu pour Nintendo DS ou Switch, pour PS4, pour XBox, pour PC, pour iPhone ou n'importe quel autre appareil, le principe est le même : du code est exécuté plusieurs fois chaque seconde (le plus souvent 30 fois ou 60 fois) pour modifier des informations puis pour les afficher, comme dans un film ou un dessin animé. Si on n'exécutait le code qu'une seule fois, on ne pourrait pas faire bouger quelque chose sur l'écran.

Pour t'aider à créer ton jeu, le moteur te demande d'écrire deux fonctions : "update" (ça veut dire "mettre à jour") et "draw" (ça veut dire "dessiner"). Pour le moment, tu vas juste dessiner.


## Comprendre que la fenêtre est un quadrillage dans lequel il faut se repérer

La fenêtre qui s'ouvre quand tu exécutes ton jeu est un grand quadrillage invisible de 800 colonnes et 600 lignes. Les cases de ce quadrillage sont des **pixels** :
- Le pixel (0 ; 0) est tout en haut à gauche ;
- le pixel (800 ; 0) est tout en haut à droite ;
- le pixel (0 ; 600) est tout en bas à gauche ;
- le pixel (800 ; 600) est tout en bas à droite ;
- le pixel (400 ; 300) est au milieu de la fenêtre, parce que 400 est la moitié de la largeur de la fenêtre (800) et 300 est la moitié de la hauteur de la fenêtre (600).

En tout, il y a donc 800 * 600 pixels dans cette fenêtre, soit 480 000 pixels !

Ca veut dire que si tu dessines quelque chose sur le pixel (1000 ; 200), il ne sera pas affiché car il "sort" de la fenêtre puisqu'elle a seulement une largeur de 800 pixels.


## Ecrire la fonction "draw"

Une fonction, c'est un ensemble de code qui va pouvoir être exécuté. Une fonction commence par le mot clé "function" suivi du nom de cette fonction et se termine par le mot clé "end".

``` lua
function love.draw()
  -- Je peux écrire mon code pour dessiner des choses ici.
  -- Le code qui est ici est le code de la fonction "draw", entre le mot "function" et le mot "end".
end

-- Le code qui est ici n'est PAS dans la fonction draw, parce qu'il est écrit après le mot "end" qui termine la fonction "draw".
```

Ici, la fonction s'appelle "love.draw". Le moteur de jeu sait qu'il doit l'exécuter 60 fois par seconde.

Tu remarques que les mots de ce code sont écrits de différente couleur : cela permet de t'aider à relire ton code.


## Ecrire le code pour dessiner un cercle à l'écran.

A l'intérieur de la fonction "draw", tu vas pouvoir programmer le moteur de jeu pour qu'il dessine un cercle.

``` lua
love.graphics.circle("fill", 400, 300, 50)
```

Ce bout de code **appelle la fonction** "love.graphics.circle" ("circle" veut dire "cercle") avec 4 **arguments** :
- en premier "fill" ou "line" : "fill" (ça veut dire "remplir") permet de colorier l'intérieur du cercle, alors que "line" (ça veut dire "ligne") ne dessine que le contour du cercle ;
- en deuxième la colonne du centre du cercle : de combien de pixels le centre du cercle est décalé par rapport au bord gauche de la fenêtre ;
- en troisième la ligne du centre de cercle : de combien de pixels le centre du cercle est décalé par rapport au bord du haut de la fenêtre ;
- en quatrième le rayon du cercle ;

Entraîne-toi à dessiner des disques et des cercles à d'autres endroits de la fenêtre.


## Changer de couleur

Sur un ordinateur, les couleurs sont faites en mélangeant 3 couleurs : le rouge, le vert et le bleu.

Tu remarques que tous les cercles que tu dessines son blancs. Pour changer de couleur, il faut le demander au programme en appelant la fonction "love.graphics.setColor"

``` lua
love.graphics.setColor(1, 1, 1)
```

Cette fonction a 4 arguments :
- en premier, la quantité de rouge. Il faut écrire un nombre entre 0 et 1. Par exemple 0.3, 0.76, 1/4 (un quart, soit 0.25), etc.
- en deuxième, la quantité de vert. Un nombre entre 0 et 1.
- en troisième, la quantité de bleu. Un nombre entre 0 et 1.

Ca s'appelle un code couleur RGB, R pour red (rouge), G pour green (vert), B pour blue (bleu).

Tu as le droit de donner à la fonction un quatrième argument pour indiquer la transparence de la couleur. Un nombre entre 0 et 1. Si tu mets 0 la couleur sera invisible, si tu mets 1 elle sera complètement visible (opaque). Si tu mets 1/2 (un demi, soit 0.5) elle sera à moitié transparente. Si tu ne donne pas cet argument, le moteur remplacera par 1 et ta couleur sera complètement visible.

``` lua
love.graphics.setColor(1, 0, 1, 1/2)       -- Je choisis la couleur, un violet à moitié transparent.
love.graphics.circle("fill", 400, 300, 50) -- Je trace un disque de 50 pixels de rayon au milieu de l'écran.
```

Tu peux essayer de mélanger toi-même les différentes couleurs (rouge, vert et bleu) pour créer des couleurs !

Pour t'aider à chosir une autre couleur, tu peux aller sur le site https://www.colorspire.com/rgb-color-wheel/ et choisir une couleur qui te plait et regarder les valeurs R, G et B. Tu dois les diviser par 255 pour avoir un nombre entre 0 et 1.

``` lua
  love.graphics.setColor(155/255, 30/255, 230/255) -- Je choisis comme couleur un violet.
  love.graphics.circle("fill", 400, 300, 45)       -- Je trace un disque de 45 pixels de rayon au milieu de l'écran.

  love.graphics.setColor(230/255, 145/255, 30/255) -- Je change de couleur pour un orange.
  love.graphics.circle("line", 400, 300, 50)       -- Je trace un cercle de 50 pixels de rayon au milieu de l'écran pour qu'il entoure mon disque violet.

  love.graphics.setColor(250/255, 200/255, 10/255) -- Je change de couleur pour un jaune.
  love.graphics.circle("fill", 400, 300, 10)       -- Je trace un cercle de 10 pixels de rayon au milieu de l'écran pour qu'il soit au centre de mon disque violet et de mon cercle orange.
```

Attention : à chaque fois que tu dessines, le dessin recouvre ceux d'avant, il faut donc faire attention à l'ordre dans laquelle tu dessines les figures.


## Dessiner un rectangle.

Pour faire un rectangle (et donc un carré), c'est presque pareil : il y a une fonction "love.graphics.rectangle" !

``` lua
love.graphics.rectangle("fill", 100, 300, 200, 20) -- Je me mets sur le pixel (100 ; 300) et je trace un rectangle 200 pixels de large et 20 pixels de haut.
```

Ce bout de code **appelle la fonction** "love.graphics.rectangle" ("rectangle" est un mot transparent) avec 5 **arguments** :
- en premier "fill" ou "line" : tu connais déjà, c'est comme pour le cercle ;
- en deuxième la colonne de l'angle en haut à gauche du rectangle ;
- en troisième la ligne de l'angle en haut à gauche du rectangle ;
- en quatrième la largeur du rectangle ;
- en cinquième la hauteur du rectangle ;

Essaye de tracer quelques rectangles et carrés (remplis ou juste le contour) dans ta fenêtre pour t'entraîner !
