class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date :date
      t.string :entry
      t.boolean :hidden
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
