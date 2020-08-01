#!/usr/bin/env ruby

# Description project :
# Programme permettant d'estimer le meilleure jour d'achat 
# et de revente d'un devise d'après une estimation de prix fournis

# Definition programme

def day_trader(arr)
  # hash contiendra notre résultat selon le calcul
  # arr : estimation des prix de devises approximative de plusieurs jours à venir
    hash = {}
    b=arr.length
  
  # methode pour énumerer les tableau avec leur indice respective
    arr.each_with_index{|x,i|     # x = valeur du tableau , i = indice (jour actuel)
      # la variable a correspond au jour suivant  // et pour bloquer le retour en arrière
        a=1

      # Faire soustraction de la valeur de j+ avec la valeur actuel
      # Valeur actuel == prix d'achat, j+ = prix de vente
      # Parcourir la valeur jusqu'au dernier
        while a < b-i
          # Benefice = prix de vente - prix d'achat
          hash[[i, i+a]] = (arr[i+a])-x
          a += 1
        end
    }
  # Selection de la plus grande valeur et affichage des indices des 2 meilleures jours
    return hash.sort_by{|id,value|-value}[0][0]
end
