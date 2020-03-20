class Vendor < ApplicationRecord
	has_many :vendors_sweets 
	has_many :sweets, through: :vendors_sweets

	def average_price
		total = 0
		self.vendors_sweets.each do |vendorssweet|
			total += vendorssweet.price
		end
		if self.vendors_sweets.length != 0
			average = total / self.vendors_sweets.length
		else 
			average = 0
		end
		average
	end

end
