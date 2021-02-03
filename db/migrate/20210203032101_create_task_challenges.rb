class CreateTaskChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :task_challenges do |t|
      t.belongs_to :challenge, null: false, foreign_key: true
      t.belongs_to :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
