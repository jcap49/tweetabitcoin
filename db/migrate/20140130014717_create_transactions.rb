class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :amount
      t.integer :recipient_id
      t.string :recipient_name

      t.timestamps
    end
  end
end
