class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.integer :national_number, null: false
      t.string :picture
      t.string :name, null: false
      t.text :types, array: true

      t.timestamps
    end
  end
end
