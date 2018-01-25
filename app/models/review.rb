class Review < ApplicationRecord
  validates :rating, :body, presence: true

  belongs_to :user
  belongs_to :superpower
  has_many :votes, dependent: :destroy

  def score
    # maybe use :votes or self.votes
    votes.count
  end
end
