#!/usr/bin/env ruby

# Description project : 
# Compteur du nombre de mot ou texte fourni dans le programme
# à partir du dictionnaire prédefini

# Methode : store and count the words found in the dictionary
  def hash_add(hash, key)
  # tester si le mot existe déjà?
    if (hash.key?(key))
      hash[key] += 1    # si oui : on incrémente la valeur 
    else
      hash[key] = 1     # si non :  on initialise à 1
    end
  end

# Methode : test if the word are in the dictionary
  def word_counter(str, dictionnary)
  # prendre les mots un par un, séparer par une espace
    corpus = str.split(' ')
    res = {} # Résultat

  # parcourir chaque mot dans corpus
    for word in corpus do
    # parcourir chaque mot dans le dictionnaire
      for known_word in dictionnary do
        # tester l'élement du corpus avec le dictionnaire
        if (word.downcase.include?(known_word.downcase))
          hash_add(res, known_word)
        end
      end
    end
  # Sortie
    return (res)
  end

# Methode : excecute the programme (content the basic dictionnary)
  def count(corpus)
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy",
    "it", "i", "low", "own", "part", "partner", "sit"]
    print word_counter(corpus, dictionnary) # Affichage des résultats
  end

__END__
