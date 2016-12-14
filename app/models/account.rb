class Account < ApplicationRecord

  belongs_to :user

  def self.get_names
    return all.pluck(:institution).uniq!
  end
end
