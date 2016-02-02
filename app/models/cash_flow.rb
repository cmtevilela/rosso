class CashFlow < ActiveRecord::Base
	belongs_to :popo
	belongs_to :kind

	validates :value, presence: true, numericality: { less_than: 10000000, greater_than: -10000000 }
	validates :date, presence: true
	validates :popo_id, presence: true
	validates :kind_id, presence:true

end
