class HomeController < ApplicationController
  def index
    offset = rand(Card.count)
    @random_flashcard = Card.offset(offset).first
  end
end
