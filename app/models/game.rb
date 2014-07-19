class Game < ActiveRecord::Base
  has_many :guesses
  belongs_to :deck
  belongs_to :user
  

  def curr_card
    cards = self.deck.cards
    return nil if self.curr_card_index >= cards.size
    cards[self.curr_card_index]
  end

  def progress
    self.curr_card_index
  end

  def next
    cards = self.deck.cards
    return nil if self.curr_card_index >= cards.size
    cards = self.deck.cards
    curr_card = cards[self.curr_card_index]
    self.curr_card_index += 1
    self.save
    return nil if self.curr_card_index == cards.size
    curr_card
  end

  def num_cards
    self.deck.cards.count
  end

  def num_right
    self.guesses.where(correct?: true).size
  end

  def percent_right
    100 * (self.num_right.to_f / self.progress)
  end

end
