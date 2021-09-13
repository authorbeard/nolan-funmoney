class CreateBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :banks do |t|
      t.string :name, null: false
      t.integer :routing_number

      t.timestamps
    end
  end
end
