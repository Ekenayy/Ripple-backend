class Challenge < ApplicationRecord
  # belongs_to :creator, :class_name => "user"
  belongs_to :user
  has_many :task_challenges, dependent: :destroy
  has_many :tasks, through: :task_challenges
  has_many :likes, dependent: :destroy
  has_many :user_challenges, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  def my_challenge_takers
    my_user_challenges = UserChallenge.all.where(challenge_id: self.id)
    my_user_challenges.all.map {|c| c.user}
    
  end 

end
