#!/usr/bin/env ruby

#  Fonction de calculer la somme des nombre naturel 
#  multiple à 3 et 5 au dessous de nombre indiquer

def sum_of_3_and_5_multiples(n)
	x = 0
	y = []
	if n.is_a?(Integer) && n >= 0
		until x == n
			if x % 3 == 0 || x % 5 == 0
				y << x
			end
			x += 1
		end
		return y.reduce(0, :+)
	else
		return "yo je ne prends que les entiers naturels TG"
	end
end

puts sum_of_3_and_5_multiples(10)
