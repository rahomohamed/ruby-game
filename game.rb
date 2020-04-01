class Game
  attr_accessor :name, :lives, :num1, :num2
  
  # generate question
  def question(player)
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    puts "#{player.name}: What does #{num1} + #{num2} equal?"
  end

  def answer(player)
    @answer = gets.chomp.to_i
    
    if @answer == num1 + num2
      puts "#{player.name}: YES! You are correct."
      player.lives
    else
      puts "#{player.name}: Seriously? No!"
      player.lose
    end
  end
  def turn(player)
    if players[0].lives == 0 ||  players[1].lives == 0
      if players[0].lives == 0
        puts "#{players[1].name} wins the game with a score of #{players[1].lives}/3"
      else
        puts "#{players[0].name} wins the game with a score of #{players[0].lives}/3"
      end
      puts "----- GAME OVER -----\nGood bye!"
    end
    else
      if ( players[0].lives || players[1].lives ) > 0
        puts "----- NEW TURN -----"
      else
      game = Game.new
      game.question(player)
      game.answer(player)
      puts "#{players[0].name}: #{players[0].lives}/3 vs #{players[1].name}: #{players[1].lives}/3"
    end
  end
end