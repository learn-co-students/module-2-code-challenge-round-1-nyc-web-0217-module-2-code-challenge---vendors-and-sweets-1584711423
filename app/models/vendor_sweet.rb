class VendorSweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet 

    validates :price , presence: true
    validates :price , numericality: {greater_than_or_equal_to:0}
    
    validates_uniqueness_of :vendor_id, :scope => [:sweet_id]
end
