class Kind < ActiveRecord::Base
  belongs_to :category
  has_many :cash_flows

  validates :name, presence: true, uniqueness: true
end
