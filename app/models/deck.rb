class Deck < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  has_many :games
  has_many :cards
end
