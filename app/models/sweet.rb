class Sweet < ApplicationRecord
 has_many :vendor_sweets 

 has_many :vendors, through: :vendor_sweets

 def all_dem_vendors
    self.vendors
 end 
end
