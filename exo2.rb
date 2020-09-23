# Ecrire un algorithme qui demande un nombre de départ, et qui calcule la somme
# des entiers jusqu’à ce nombre. Par exemple, si l’on entre 5, le programme
# doit calculer :

#1 + 2 + 3 + 4 + 5 = 15

#NB : on souhaite afficher uniquement le résultat, pas la décomposition du calcul.

#nombre de départ indiqué
nombre_de_depart = 10
#initialisation du nombre
init = 0
#boucle
array = []
while init != nombre_de_depart
array << init += 1
end
p array.sum
