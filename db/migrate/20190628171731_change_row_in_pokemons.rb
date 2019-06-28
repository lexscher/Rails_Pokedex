class ChangeRowInPokemons < ActiveRecord::Migration[5.2]
  def change
    remove_column :pokemons, :type
    add_column :pokemons, :poke_type, :string
  end
end
