class Invoice < ActiveRecord::Base
	has_many :line_items
	belongs_to :customer
	has_many :products, through: :line_items
end
