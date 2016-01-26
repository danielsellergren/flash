class Card < ActiveRecord::Base
  validates :topic, :definition, presence: true
end
