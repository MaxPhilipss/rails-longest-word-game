require 'longest_game'

class WordgameController < ApplicationController
  def game
    @grid = LongestGame.generate_grid(9)
  end

  def score
    puts LongestGame.word_in_grid?(params[:guess], params[:grid].split(""))
  end

end
