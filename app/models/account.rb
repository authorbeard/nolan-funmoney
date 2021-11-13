# frozen_string_literal: true

class Account < ApplicationRecord
  enum account_type: { bank: 'bank', credit: 'credit', loan: 'loan', investment: 'investment' }

  belongs_to :bank
  has_many :user_accounts
  has_many :users, through: :user_accounts
  has_many :transactions
  has_many :credit_transactions, class_name: 'Transaction', foreign_key: :target_account_id
  has_many :debit_transactions, class_name: 'Transaction', foreign_key: :source_account_id

  after_touch :update_balance

  def update_balance
    update!(balance: credits - debits)
  end

  def credits
    @credits ||= credit_transactions.sum(:amount) 
  end

  def debits
    @debits ||= debit_transactions.sum(:amount)
  end

end