class Vendor < ApplicationRecord
	has_many :vendors_sweets 
	has_many :sweets, through: :vendors_sweets
end
