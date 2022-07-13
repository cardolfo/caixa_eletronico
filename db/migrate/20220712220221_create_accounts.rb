class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :number
      t.monetize :balance

      t.timestamps
    end
  end
end
