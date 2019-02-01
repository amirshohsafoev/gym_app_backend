class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture_url
      t.string :email
      t.integer :age
      t.integer :weight
      t.string :height
      t.string :password_digest

      t.timestamps
    end
  end
end
