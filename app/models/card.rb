class Card < ActiveRecord::Base
  after_commit :print_card

  validates :topic, :definition, presence: true

  private

  def print_card
    puts self.topic
  end
end
