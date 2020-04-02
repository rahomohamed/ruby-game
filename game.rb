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
end