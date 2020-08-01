# Initialisation Variables
  dictionnary1 = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  dictionnary2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
  book = File.read("data/shakespeare.txt")  #read book shakespeare
  banned = File.read("data/banned.txt").split("\n")  # dictionnary words banned

# Definition function
	def word_counter(word, dictionnary)
		hash = {nil} # Resultat initialized nil 
		#check the table dictionnary
		dictionnary.map{|i|
			# test if word include in the dictionnary
			if word.downcase.include?(i) == true
				hash[i] = word.downcase.scan(i).count 
			end
		}
	return hash
	
	end 
