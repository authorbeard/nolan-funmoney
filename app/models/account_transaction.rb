# frozen_string_literal: true 

class AccountTransaction < ApplicationRecord
  belongs_to :source_account
  belongs_to :target_account
end