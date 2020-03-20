class Vendor < ApplicationRecord
     has_many :vendor_sweets

     has_many :sweets, through: :vendor_sweets

     def all_dem_sweets
        self.sweets
     end 
end
