class Review < ApplicationRecord
    belongs_to :user
    belongs_to :challenge
    validates :rating, numericality:  {less_than_or_equal_to: 5}
    validates :rating, presence: true


end
