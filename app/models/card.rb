class Card < ActiveRecord::Base
  validates_presence_of :question, :answer
  belongs_to :deck
  has_many :guesses
end
