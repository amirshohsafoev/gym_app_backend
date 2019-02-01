class CreateDayBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :day_bodies do |t|
      t.references :day, foreign_key: true
      t.references :part_of_the_body, foreign_key: true

      t.timestamps
    end
  end
end
