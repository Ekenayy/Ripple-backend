class CreateUserChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :user_challenges do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :challenge, null: false, foreign_key: true
      t.boolean :completed
      t.date :date_completed

      t.timestamps
    end
  end
end
