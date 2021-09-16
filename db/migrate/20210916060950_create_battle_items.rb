class CreateBattleItems < ActiveRecord::Migration[5.2]
  def change
    create_table :battle_items do |t|
      t.string :name
      t.string :image
      t.timestamps
    end
  end
end
