class Task < ApplicationRecord
    has_many :task_challenges, dependent: :destroy
    
end
