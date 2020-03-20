class VendorSweetsController < ApplicationController
   
    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all

    end

    def create
        vendor_sweet = VendorSweet.create(vs_params)
        redirect_to vendor_path(vendor_sweet.vendor_id)


    end

    private 

    def vs_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
