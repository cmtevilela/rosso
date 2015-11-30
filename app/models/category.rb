class Category < ActiveRecord::Base
	has_many :kinds

	validates :name, presence: true, uniqueness: true
end
