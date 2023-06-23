class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, null: false, index: true
      t.text :subtitle
      t.string :isbn_10, null: false, index: true, unique: true
      t.string :isbn_13, null: false, index: true, unique: true
      t.text :description
      t.date :released_on, null: false
      t.references :publisher, foreign_key: true, index: true
      t.references :author, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
