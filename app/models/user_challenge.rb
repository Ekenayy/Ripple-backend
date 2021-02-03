class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :user_task_challenges, dependent: :destroy

end
