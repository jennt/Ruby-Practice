require 'pry'

  def scrabble(rack, word)
    word.split('').each do |letter|
      index = rack.index(letter)
      if index
        rack[index] = ""
      elsif rack.include?('?')
        index = rack.index('?')
        rack[index] = ""
      else
        return false
      end
    end
    return true
  end

  def longest(rack, words)
  end
