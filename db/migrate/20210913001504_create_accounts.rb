class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name, null: false
      t.integer :account_number
      t.string :account_type, default: 'bank'
      t.float :balance
      t.float :interest_rate
      t.datetime :due_date
      t.string :status, null: false, default: 'active'
      t.boolean :intro_rate, default: false
      t.datetime :intro_rate_end
      t.references :bank
      t.references :user
      t.references :source_account, foreign_key: { to_table: :accounts }
      t.references :target_account, foreign_key: { to_table: :accounts }
      t.timestamps
    end
  end
end
