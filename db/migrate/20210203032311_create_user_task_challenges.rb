class CreateUserTaskChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :user_task_challenges do |t|
      t.belongs_to :user_challenge, null: false, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
