class Task < ApplicationRecord
    has_many :task_challenges, dependent: :destroy
    
    def self.all_Descriptions
        self.all.map { |task| task.description}
    end 
    
end
