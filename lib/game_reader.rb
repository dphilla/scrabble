class GameReader
  attr_reader :scores

  def initialize(scores = nil)
    @scores = scores
    @score_dict ={
    "A"=>1, "B"=>3, "C"=>3, "D"=>2,
    "E"=>1, "F"=>4, "G"=>2, "H"=>4,
    "I"=>1, "J"=>8, "K"=>5, "L"=>1,
    "M"=>3, "N"=>1, "O"=>1, "P"=>3,
    "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
    "U"=>1, "V"=>4, "W"=>4, "X"=>8,
    "Y"=>4, "Z"=>10
              }
  end

   def score(letter)
    letter = letter.upcase
    if letter.length > 1
      letter = letter.split(//)
      word_score = letter.map { |character| @score_dict[character]}
      @score = word_score.reduce(:+)
    else
      @score = @score_dict[letter]
    end
  end

end


# instance = GameReader.new
# require 'pry'; binding.pry
