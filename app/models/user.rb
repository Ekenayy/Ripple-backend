class User < ApplicationRecord
    has_many :user_challenges, dependent: :destroy
    has_many :challenges
    has_many :likes, dependent: :destroy
    has_many :created_challenges, :class_name => "Challenge", dependent: :destroy

end
