class CreateArtpieces < ActiveRecord::Migration[6.0]
  def change
    create_table :artpieces do |t|
      t.string :type
      t.string :name
      t.integer :price_per_day
      t.text :description
      t.string :artist
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
