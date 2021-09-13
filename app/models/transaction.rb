# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :source_account, class_name: 'Account', optional: true
  belongs_to :target_account, class_name: 'Account', optional: true

  validate :account_attribution

  def account_attribution
    
  end
end