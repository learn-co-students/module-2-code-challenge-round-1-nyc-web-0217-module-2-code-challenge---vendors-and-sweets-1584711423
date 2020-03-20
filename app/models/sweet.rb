class Sweet < ApplicationRecord
    has_many :vendorsweeets
    has_many :vendors, through: :vendorsweets
end
