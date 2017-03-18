list = []
name = 0

loop do
  puts "Enter name: "
  name = gets.chomp

  if name == 'exit'
    break
  end

  if name == ''
    winner = list.sample
    list.delete(winner)
    if list.length == 0
      break
    end
    puts "Winner is #{winner}"
    puts "List: #{list}"
  else
    list << name
  end
end
