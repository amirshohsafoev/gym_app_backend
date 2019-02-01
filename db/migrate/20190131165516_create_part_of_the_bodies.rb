class CreatePartOfTheBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :part_of_the_bodies do |t|
      t.string :body_name
      t.string :picture_url

      t.timestamps
    end
  end
end
