require_relative '../lib/02_trader'

# Test aléatoire avec des listes ordonnées et non ordonnées
  describe "#day_trader" do

  # liste ordonnée
    it " " do
      s = day_trader([35,45,50,60,65,70,75,80])
      expect(s).to eq([0,7])
    end

    it " " do
      s = day_trader([50,49,48,47,46,45,44,43,42,41,40])
      expect(s).to eq([0,1])
    end

  #Liste non ordonnées
    it " " do
      s = day_trader([35,45,88,5,59,27,51,34,87,89])
      expect(s).to eq([3,9])
    end

    it " " do
      s = day_trader([21,51,3,88,64,76,1,51,55,32,20,8])
      expect(s).to eq([2,3])
    end

    it " " do
      s = day_trader([51,51,12,87,13,52,20,1,82,54])
      expect(s).to eq([7,8])
    end

  end
