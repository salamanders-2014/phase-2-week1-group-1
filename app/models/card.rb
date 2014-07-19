class Card < ActiveRecord::Base
  validates_presence_of :question, :answer
  belongs_to :deck
  has_many :guesses

  def check_answer(ans)
    self.answer.downcase.strip == ans.to_s.downcase.strip
  end
end
