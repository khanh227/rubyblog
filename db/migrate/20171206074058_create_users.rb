class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :birthday

      t.timestamps
    end

    add_column :users, :birthday, :date

  end

end
