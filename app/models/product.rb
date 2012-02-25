class Product < ActiveRecord::Base
	has_many :line_items
	has_many :invoices, through: :line_items
	belongs_to :category
end
