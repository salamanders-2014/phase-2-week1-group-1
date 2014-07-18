class Deck < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  has_many :games
  has_many :cards
  has_many :users, through: :game

  def count
    self.cards.where(correct?: true).size
  end
end
