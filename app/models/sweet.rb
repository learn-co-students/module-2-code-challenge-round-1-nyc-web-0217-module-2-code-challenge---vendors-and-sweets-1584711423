class Sweet < ApplicationRecord
	has_many :vendors_sweets 
	has_many :vendors, through: :vendors_sweets
end
