class CreateMySets < ActiveRecord::Migration[5.2]
  def change
    create_table :my_sets do |t|
      t.references :user, foreign_key: true
      t.references :pokemon, foreign_key: true
      t.references :r_skill, foreign_key: { to_table: :skills }
      t.references :zr_skill, foreign_key: { to_table: :skills }
      t.references :battle_item, foreign_key: true
      t.references :tool_1, foreign_key: { to_table: :tools }
      t.references :tool_2, foreign_key: { to_table: :tools }
      t.references :tool_3, foreign_key: { to_table: :tools }
      t.timestamps
    end
  end
end
