class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :book, null: false, foreign_key: true, index: true
      t.references :user, null: false, foreign_key: true
      t.monetize :price
      t.integer :status, null: false, default: 0
      t.string :charge_id
      t.string :token
      t.text :error, default: '{}'

      t.timestamps
    end

    add_index :payments, [:user_id, :book_id]
  end
end
