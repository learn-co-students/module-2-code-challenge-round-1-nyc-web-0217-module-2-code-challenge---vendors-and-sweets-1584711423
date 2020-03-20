class Vendor < ApplicationRecord
    has_many :vendor_sweet
    has_many :sweets, through: :vendor_sweet
end
