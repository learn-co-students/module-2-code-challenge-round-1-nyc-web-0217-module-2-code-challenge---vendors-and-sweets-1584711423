class VendorsSweet < ApplicationRecord
	belongs_to :sweet 
	belongs_to :vendor

	validates_uniqueness_of :sweet, scope: :vendor_id

	validates :price, presence: true
	validates :price, :numericality => { :greater_than_or_equal_to => 0 }
end