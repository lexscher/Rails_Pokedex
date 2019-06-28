class AddColumnToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :sprite_url, :string
  end
end
