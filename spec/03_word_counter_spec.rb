require_relative '../lib/03_word_counter'

dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy","it", "i", "low", "own", "part", "partner", "sit"]

# Test avec des données qui se trouvent dans le dictionnaire et des données qui le sont pas
describe "the word counter function" do

	# Test de mélange de mots se trouvant dans le dictionnaire et qui ne sont pas 
		# test unitaire
		it "counts word which are in the dictionnary" do
			expect(word_counter("below", dictionnary)).to eq({"below"=>1, "low"=>1})
		end

		# test paragraphe or text
		it "counts word which are in the dictionnary" do
			expect(word_counter("Howdy partner, sit down! How's it going?",
			dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
		 end


	# Test de mot ne se trouvant pas dans le dictionnaire
		# test unitaire
		it "counts word which are not in the dictionnary" do
			expect(word_counter("veloma", dictionnary)).to eq({})
		end

		# test paragraphe or text
		it "counts word which are in the dictionnary" do
	    	expect(word_counter("veloma tompoko", dictionnary)).to eq({})
	  	end
end
