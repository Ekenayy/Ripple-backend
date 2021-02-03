class Challenge < ApplicationRecord
  belongs_to :creator, :class_name => "user"
  has_many :task_challenges, dependent: :destroy
  has_many :tasks, through: :task_challenges
  has_many :likes, dependent: :destroy
  has_many :user_challenges, dependent: :destroy
  
end
