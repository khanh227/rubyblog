class CreateLikeds < ActiveRecord::Migration[5.1]
  def change
    create_table :likeds do |t|
      t.integer :user_liked
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
