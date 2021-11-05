# frozen_string_literal: true

class Account < ApplicationRecord
  enum account_type: { bank: 'bank', credit: 'credit', loan: 'loan', investment: 'investment' }
  belongs_to :user
  has_many :transactions
  has_many :credits, class_name: 'Transaction', foreign_key: :target_account_id
  has_many :debits, class_name: 'Transaction', foreign_key: :source_account_id

  def update_balance
    binding.pry    
  end
end