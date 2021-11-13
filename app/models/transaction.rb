# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :source_account, class_name: 'Account', optional: true
  belongs_to :target_account, class_name: 'Account', optional: true

  validates :amount, presence: true, numericality: true
  validates_presence_of :source_account, if: -> { internal? || target_account.nil? }
  validates_presence_of :target_account, if: -> { internal? || source_account.nil? }

  after_create :update_account_balances

  def update_account_balances
    [source_account, target_account].each(&:update_balance)
  end
end