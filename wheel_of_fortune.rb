class WheelOfFortune
  attr_accessor :phrase
  def initialize(params)
    p "Happy coding!"
    @phrase = params[:phrase]
    @theme = params[:theme]
    @guesses = []
  end

  def theme
    @theme
  end

  def guesses
    @guesses
  end

  def to_s
    unguessed = @phrase.gsub(/[a-zA-Z]/, "_")
  end

  def can_i_have?(input)
    @guesses << input
    @phrase.downcase.include?(input.downcase)
  end

  def game_over?
    nil
  end
end


# Checks to see if we executed this file from the command-line
# e.g. `ruby simple_jepordy.rb`
if __FILE__ == $0

  # DRIVER CODE
  j = WheelOfFortune.new( {theme: "card games", phrase: "Go fish"} )
  j.can_i_have?("g")
  j.can_i_have?("o")
  p j
  puts j # calls j.to_s

end
