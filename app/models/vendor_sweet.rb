class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validates :price, numericality: true
    validates :price, numericality: {greater_than }

end
