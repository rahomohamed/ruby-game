require './player'
require './game'

# init players
players = [Player.new("Player1", 3), Player.new("Player2", 3)]

players.cycle { |turn|
  if players[0].lives == 0 ||  players[1].lives == 0
    if players[0].lives == 0
      puts "#{players[1].name} wins the game with a score of #{players[1].lives}/3"
    else
      puts "#{players[0].name} wins the game with a score of #{players[0].lives}/3"
    end
    puts "----- GAME OVER -----\nGood bye!"
    break
  else
    if ( players[0].lives || players[1].lives ) > 0
      puts "----- NEW TURN -----"
    else
    end
    game1 = Game.new
    game1.question(turn)
    game1.answer(turn)
    puts "#{players[0].name}: #{players[0].lives}/3 vs #{players[1].name}: #{players[1].lives}/3"
  end
}


