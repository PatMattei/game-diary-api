class AddColumnsToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :name, :string
    add_column :games, :console, :string
  end
end
