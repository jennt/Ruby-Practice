describe '#chem_spell(word)' do
  context '' do
    it 'returns the word capitalized by matching chem and lists the chemicals  ' do
      expect(chem_spell(functions)).to eq "FUNCTiONS (flourine, uranium, nitrogen, carbon, titanium, oxygen, nitrogen, sulfur"
      expect(chem_spell(bacon)).to eq "BaCoN (barium, cobalt, nitrogen)"
      expect(chem_spell(poison)).to eq "POISON (phosphorus, oxygen, iodine, sulfur, oxygen, nitrogen)"
      expect(chem_spell(sickness)).to eq "SiCKNeSS (silicon, carbon, potassium, neon, sulfur, sulfur)"
      expect(chem_spell(ticklish)).to eq "TiCKLiSH (titanium, carbon, potassium, lithium, sulfur, hydrogen)"
    end
  end
end
