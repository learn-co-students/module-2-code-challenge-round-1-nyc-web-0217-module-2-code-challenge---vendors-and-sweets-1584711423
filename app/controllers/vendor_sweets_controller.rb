class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new

        @vendors = Vendors.all
        @sweets = Sweets.all
    end

    def create
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        if @vendor_sweet.save
            redirect_to vendor_path(@vendor)
        else
            flash[:errors] = @vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path
        end
    end

    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
