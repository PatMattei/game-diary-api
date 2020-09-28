class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :api_ref
      t.string :entry
      t.belongs_to :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
