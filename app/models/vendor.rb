class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets , through: :vendor_sweets

    def avg_price
       total= self.vendor_sweets.map{|vs|vs.price}.sum
       amount=self.vendor_sweets.count
        avg=total/amount
        avg
    end

end
