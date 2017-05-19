gem 'minitest'
require './lib/game_reader'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GameReaderTest < Minitest::Test

  def test_letters_have_scores
    new_game = GameReader.new
    expected = 1
    result = new_game.score("A")
    assert_equal expected, result
  end

  def test_can_check_words
    new_game = GameReader.new
    expected = 10
    result = new_game.score("heyo")
    assert_equal expected, result
  end
end
