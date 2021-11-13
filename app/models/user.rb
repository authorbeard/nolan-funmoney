# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :confirmable, :lockable, :timeoutable, :trackable

  has_one_attached :avatar

  has_many :user_accounts
  has_many :accounts, through: :user_accounts
end