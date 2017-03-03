require 'pry'
class Scrabble

  def self.scrabble(rack, word)
    word.split('').each do |letter|
      index = rack.index(letter)
      if index
        rack[index] = ""
      else
        return false
      end
    end
    return true
  end

end
