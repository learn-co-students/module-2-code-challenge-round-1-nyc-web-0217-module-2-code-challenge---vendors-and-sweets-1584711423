class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validates :price, presence: true
    validate :negative?

    def negative?
        if price < 0 || price == nil
            errors.add(:price, "Price must be a positive number!")
        end
    end
end
