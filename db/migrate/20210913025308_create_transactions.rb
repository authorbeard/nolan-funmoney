class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.text :description
      t.float :amount, null: false
      t.boolean :internal
      t.boolean :family, null: true
      t.references :source_account, foreign_key: { to_table: :accounts }
      t.references :target_account, foreign_key: { to_table: :accounts }
      t.timestamps
    end
  end
end
