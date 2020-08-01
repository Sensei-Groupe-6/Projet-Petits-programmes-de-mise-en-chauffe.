require_relative '../lib/00_multiple'

describe "the sum_of_3_and_5_multiples method" do  

	# test unitaire with a number integer and positive!! 
		it "should return the sum of multiples of 3 and 5 lower than the input" do
			expect(sum_of_3_and_5_multiples(10)).to eq(23)    

			expect(sum_of_3_and_5_multiples(11)).to eq(33)    

			expect(sum_of_3_and_5_multiples(0)).to eq(0)    

			expect(sum_of_3_and_5_multiples(3)).to eq(0)  
		end

	# test with many caractère different of integer : float, string and negatif integer
		it "should not calculate if the input is not a naturalnumber" do
			# we use or operateur because this operator test everything mentionned
			expect(sum_of_3_and_5_multiples( - 1 || 1.23 || "chiffre")).to eq("\033[31m" + "ERREUR!!!! yo je ne prends que les entiers naturels TG")
		end
end
