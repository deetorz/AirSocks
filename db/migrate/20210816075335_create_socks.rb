class CreateSocks < ActiveRecord::Migration[6.1]
  def change
    create_table :socks do |t|
      t.string :name
      t.text :description
      t.string :color
      t.float :size
      t.integer :price
      t.string :style
      t.string :photo_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
