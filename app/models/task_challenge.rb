class TaskChallenge < ApplicationRecord
  belongs_to :challenge
  belongs_to :task
end
