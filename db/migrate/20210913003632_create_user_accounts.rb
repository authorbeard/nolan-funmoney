class CreateUserAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_accounts do |t|

      t.timestamps
    end
  end
end
