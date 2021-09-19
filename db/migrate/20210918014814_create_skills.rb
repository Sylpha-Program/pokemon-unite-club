class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.references :pokemon, foreign_key: true
      t.integer :button
      t.string :name
      t.string :image
      t.integer :attack_category
      t.integer :level
      t.integer :cool_time
      t.string :attack_type
      t.timestamps
    end
  end
end
