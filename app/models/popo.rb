class Popo < ActiveRecord::Base
	has_many :cash_flows

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true
  validates :admin, inclusion: { in: [true, false] }
end
