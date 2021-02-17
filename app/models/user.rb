class User < ApplicationRecord
    has_many :user_challenges, dependent: :destroy
    has_many :challenges
    has_many :likes, dependent: :destroy
    has_many :created_challenges, :class_name => "Challenge", dependent: :destroy
    has_many :reviews, dependent: :destroy

    validates :name, :email, presence: true
    validates :email, uniqueness:
        {message: '-- An account associated with %{value} already exists'}

    def challenge_ids

        self.user_challenges.map do |uc|
          uc.challenge.id
        end 
        
    end 

    def reviewed_challenge_ids
        
        self.reviews.map do |r|
            r.challenge.id
        end
        
    end 

end
