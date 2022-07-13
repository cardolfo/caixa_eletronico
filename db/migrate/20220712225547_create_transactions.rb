class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.monetize :value, null: false
      t.integer :transaction_type, null: false      
      t.references :destination_account, null: true, foreign_key: {to_table: :account}
      t.references :source_account, null: false, foreign_key: {to_table: :account}

      t.timestamps
    end
  end
end
