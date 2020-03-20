class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validates :price, numericality: true
    validates :price, numericality: {greater_than: 0 }
    # not sure if they are asking this..
    # validates :vendor_id, :sweet_id,  uniqueness: true

end
