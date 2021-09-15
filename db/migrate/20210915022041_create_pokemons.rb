class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image
      t.integer :attack_type
      t.integer :role
      t.integer :attack_category
      t.timestamps
    end
  end
end
