class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validates :price, presence: true
    validate :negative?

    def negative?
        if price.to_i < 0
            errors.add(:price, " must be a positive number!")
        end
    end
end
