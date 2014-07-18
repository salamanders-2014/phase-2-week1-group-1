class Deck < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  has_many :games
  has_many :cards
  has_many :users, through: :game

  def size
    self.cards.count
  end

  def curr_card
    cards = self.cards
    return nil if self.curr_card_index >= cards.length
    cards[self.curr_card_index]
  end

  def next
    return nil if self.curr_card_index >= cards.length
    cards = self.cards
    curr_card = cards[self.curr_card_index]
    self.curr_card_index += 1
    return nil if self.curr_card_index == cards.length
    curr_card
  end

  def count
    self.cards.where(correct?: true).size
  end

  def percent_right
    100 * (self.count.to_f / self.cards.count)
  end


end
