class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs
  has_many :paychecks, through: :jobs
  has_many :accounts
  has_many :transactions, through: :accounts
  has_many :bills, through: :accounts
  has_many :user_statements
  has_many :statements, through: :user_statements
end
