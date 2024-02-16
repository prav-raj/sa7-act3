
score = 0
rooms = { '1' => 5, '2' => 10, '3' => 15 }

puts 'Welcome to the Adventure Game!'

loop do
 
  puts "You have #{score} points."
  print "Choose a room (1-3) to enter or 'exit' to end the game: "
  choice = gets.chomp

  if choice.downcase == 'exit'
    puts "Game over! You collected a total of #{score} points."
    break
  end

  if rooms.key?(choice)
    score += rooms[choice]
    puts "You entered Room #{choice} and earned #{rooms[choice]} points."
  else
    puts "Invalid choice. Please choose a valid room number (1-3) or 'exit'."
  end
end