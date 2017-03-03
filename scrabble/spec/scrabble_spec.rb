require 'scrabble'

describe Scrabble do

  describe '#scrabble' do
    context 'when word is possible given rack' do
      it 'returns true' do

        expect(Scrabble.scrabble("ladilmy", "daily")).to eq true
        expect(Scrabble.scrabble("orrpgma", "program")).to eq true
      end
    end

    context 'when word is not possible given rack' do
      it 'returns false' do

        expect(Scrabble.scrabble("eerriin", "eerie")).to eq false
        expect(Scrabble.scrabble("orppgma", "program")).to eq false
      end
    end
  end
end
