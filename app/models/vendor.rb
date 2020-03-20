class Vendor < ApplicationRecord
    has_many :vendor_sweet
    has_many :sweets, through: :vendor_sweet


    def ave_price
        prices = self.vendor_sweet.map {|item| item.price }
        average = prices.reduce(:+)/prices.count.to_f
        average
    end

end
