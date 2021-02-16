class Review < ApplicationRecord
    belongs_to :user
    belongs_to :challenge
    validates :rating, length: { in: 1..5 }
    validates :rating, numericality:  {message: 'This value must be a number'}
    validates :rating, presence: true


end
