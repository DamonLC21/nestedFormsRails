class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :mass
      t.references :galaxy, foreign_key: true

      t.timestamps
    end
  end
end
