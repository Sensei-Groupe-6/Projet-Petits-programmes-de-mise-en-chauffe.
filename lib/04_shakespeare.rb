#!/usr/bin/env ruby

# Initialisation Variables
  dictionnary1 = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  dictionnary2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
  book = File.read("data/shakespeare.txt")  # lire et stocker le livre shakespeare
  banned = File.read("data/banned.txt").split("\n")  # lire et stocker dans un tableau les mots  bannis

# Definition function
def word_counter(word, dictionnary)
	hash = {} # Résultat initialisé à nil (vide)
		
	# Regarder chaque element du tableau de dictionaire
	dictionnary.map{|i|
		# tester chaque element du tableau si cà correspond au mot de l'utilisateur
		if word.downcase.include?(i) == true
			# Stockage des résultat dans le tableau de résultat
			hash[i] = word.downcase.scan(i).count 
		end
		}

	# sortie
	return hash
end 
