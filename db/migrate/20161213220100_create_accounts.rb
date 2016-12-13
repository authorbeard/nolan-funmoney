class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :type
      t.integer :role
      t.string :name
      t.string :institution
      t.float :open_bal
      t.float :int_rate
      t.float :mo_pmt
      t.integer :limit
      t.float :intro_apr
      t.integer :intro_term

      t.timestamps
    end
  end
end
