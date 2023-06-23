class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :given_name
      t.string :family_name

      t.timestamps
    end

    add_index :authors, %i[given_name family_name], unique: true
  end
end
