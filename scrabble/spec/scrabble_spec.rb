require 'scrabble'

  describe '#scrabble' do
    context 'when word is possible given rack' do
      it 'returns true' do

        expect(scrabble("ladilmy", "daily")).to eq true
        expect(scrabble("orrpgma", "program")).to eq true
      end
    end

    context 'when word is not possible given rack' do
      it 'returns false' do

        expect(scrabble("eerriin", "eerie")).to eq false
        expect(scrabble("orppgma", "program")).to eq false
      end
    end

    context 'when a word is possible with wilds(?)' do
      it 'returns true' do
        expect(scrabble('pizza??', 'pizzazz')).to eq true
        expect(scrabble('a??????', 'program')). to eq true
      end
    end

    context 'when a word is not possible with wilds' do
      it 'returns false' do
        expect(scrabble('piizza?', 'pizzazz')). to eq false
        expect(scrabble('b??????', 'program')).to eq false
      end
    end
  end

  describe ('#longest') do
    context 'given up to 20 tiles in a rack' do
      it 'returns the longest possible word' do
        expect(longest('dcthoyueorza')). to eq 'coauthored'
        # expect(longest('uruqrnytrois')). to eq 'turquois'
        # expect(longest('rryqeiaegicgeo??')). to eq 'greengrocery'
        # expect(longest('udosjanyuiuebr??')). to eq 'subordinately'
        # expect(longest('vaakojeaietg????????')). to eq 'ovolactovegetarian'

      end
    end
  end
