class VendorSweet < ApplicationRecord
    belongs_to :sweets
    belongs_to :vendors
end