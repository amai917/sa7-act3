score = 0

rooms = {
  1 => 5,
  2 => 10,
  3 => 15
}

puts "Welcome to the Adventure Game!"
puts "You have #{score} points."

loop do
  puts "Choose a room (1-3) to enter or 'exit' to end the game: "
  pick = gets.chomp

  if pick == 'exit'
    puts "Game over! You collected a total of #{score} points."
    break
  end

  room_number = pick.to_i

  if rooms.has_key?(room_number)
    score += rooms[room_number]
    puts "You entered Room #{room_number} and earned #{rooms[room_number]} points."
    puts "Your total score is now #{score} points."
  else
    puts "Invalid room number. Please choose between 1-3 or 'exit'."
  end
end

