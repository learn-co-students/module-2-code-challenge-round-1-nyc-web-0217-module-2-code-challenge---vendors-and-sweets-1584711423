class Vendor < ApplicationRecord
    has_many :vendorsweeets
    has_many :sweets, through: :vendorsweets
end
