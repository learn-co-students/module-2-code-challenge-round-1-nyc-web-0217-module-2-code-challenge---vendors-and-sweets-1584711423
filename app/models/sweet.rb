class Sweet < ApplicationRecord
    has_many :vendor_sweet
    has_many :vendors, through: :vendor_sweet
end
