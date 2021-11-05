# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :source_account, class_name: 'Account', optional: true
  belongs_to :target_account, class_name: 'Account', optional: true

  after_create :update_account_balances

  def update_account_balances
    
  end
end