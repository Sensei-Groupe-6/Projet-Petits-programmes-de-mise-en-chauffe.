#!/usr/bin/env ruby

#  Description project : 
#  Fonction permettant de calculer la somme des nombres entiers
#  multiple de 3 et de 5 inférieur ou égal au nombre indiquer

# Define function

def sum_of_3_and_5_multiples(n)
	x = 0  	# counter
	y = []	# storing the sum of numbers

	if n.is_a?(Integer) && n >= 0			# test : the number input is integer and positive
		
		until x == n
			if x % 3 == 0 || x % 5 == 0		# test : less or equal input number is multiple of 3 and 5
				y << x						# x addition y		
			end
			x += 1				
		end

		return y.reduce(0, :+)				# Result of sum
	else
		# when the input is not a number or integer!  
		return "\033[31m" + "ERREUR!!!! yo je ne prends que les entiers naturels TG" #colored red
	end
end	
