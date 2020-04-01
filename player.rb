class Player
  attr_accessor :name, :lives

  def initialize(name, lives, msg = "Hi, new player!") 
    puts "#{msg} What's your name?" 
    @name = gets.chomp
    @lives = lives
  end

  def lose
    @lives = @lives - 1
  end
end