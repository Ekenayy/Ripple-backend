class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.string :video_url
      t.string :photo_url
      t.string :genre
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
