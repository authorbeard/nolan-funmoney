# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :source_account, class_name: 'Account', optional: true, touch: true
  belongs_to :target_account, class_name: 'Account', optional: true, touch: true

  validates :amount, presence: true, numericality: true
  validates_presence_of :source_account, if: -> { internal? || target_account.nil? }
  validates_presence_of :target_account, if: -> { internal? || source_account.nil? }

  scope :internal, -> { where(internal: true) }
  scope :external, -> { where(internal: false) }
  scope :unattributed, -> { where(family: nil) }

  before_save :check_for_internal
  
  def update_account_balances
    [source_account, target_account].compact.each(&:update_balance)
  end

  def check_for_internal
    self.internal = [source_account_id, target_account_id].all?(&:present?) 
  end
end