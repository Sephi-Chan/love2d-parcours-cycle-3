# Mission 3. Ecrire du texte à l'écran

Dans cette mission, tu vas apprendre à écrire du texte à l'écran. Tu vas apprendre à ranger des informations pour les réutiliser plus tard, pour que ton programme puisse se "souvenir".


## Ecrire du texte

Comme pour les rectangles et les cercles, le moteur de jeu te donne une fonction pour écrire du texte. Cette fonction est "love.graphics.print" ("print" veut dire "imprimer").

``` lua
function love.draw()
  love.graphics.print("Score : 0", 15, 10)
  love.graphics.print("Munitions : 9", 15, 575)
end
```

La fonction "love.graphics.print" accepte 3 arguments :
- Le texte à écrire, entouré de guillemets ;
- La position du texte par rapport à la gauche de l'écran (on dit la position en X) ;
- La position du texte par rapport au haut de l'écran (on dit la position en Y).


## Changer de couleur

Comme pour les cercles et les rectangles, tu peux changer de couleur avant d'écrire.

``` lua
function love.draw()
  love.graphics.setColor(1, 0, 0) -- Je choisis une couleur rouge.
  love.graphics.print("Score : 0", 15, 10)
end
```


## Ecrire plus gros ou plus petit

Pour écrire plus gros ou plus petit, tu vas devoir créer des **polices d'écriture** de tailles différentes avec la fonction "love.graphics.newFont" ("new font" veut dire "nouvelle police d'écriture"), qui prend comme argument la taille de la police d'écriture.

On peut ranger ces polices d'écritures dans des **variables** grâce au signe égal pour pouvoir s'en servir n'importe où dans le code.

``` lua
local small_font = love.graphics.newFont(11) -- Les lettre de cette police feront 11 pixels de haut.
local big_font = love.graphics.newFont(36) -- Et les lettre de celle-ci feront 36 pixels de haut.
```

Ici, on range la petite police d'écriture dans une variable appelée "small_font" (ça veut dire "petit police d'écriture"). On aurait pu l'appeler "abcd" ou "crevette" à la place, mais ça n'a aucun sens et ça rendrait le code difficile à comprendre. On range la grosse police dans une variable nommée "big_font" (ça veut dire "grosse police d'écriture").

Pour utiliser ces polices d'écriture, tu peux utiliser fonction "love.graphics.setFont" avant d'écrire, un peu comme avec la fonction "setColor" pour changer la couleur.

``` lua
function love.draw()
  love.graphics.setFont(big_font) -- Je veux écrire le score avec la grosse police que j'avais appelée "big_font".
  love.graphics.setColor(1, 0, 0) -- Je veux l'écrire en rouge.
  love.graphics.print("Score : 0", 15, 10) -- Je l'écris au pixel (15 ; 10) pour être en haut à gauche de la fenêtre.

  love.graphics.setFont(small_font) -- Pour écrire le nombre de munitions qu'il me reste, je prends la petite police que j'avais appelée "small_font".
  love.graphics.setColor(1, 1, 1)   -- Je veux écrire en blanc.
  love.graphics.print("Munitions : 9", 15, 575) -- Je l'écris au pixel (15 ; 575) pour être en bas à gauche de la fenêtre.
end
```

Tu peux t'entraîner à écrire des choses dans différentes tailles et à différents endroits de l'écran.
