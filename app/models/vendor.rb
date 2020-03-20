class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweet, through: :vendor_sweets
end
