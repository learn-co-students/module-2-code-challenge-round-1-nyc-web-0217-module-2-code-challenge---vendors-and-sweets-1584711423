class VendorSweetsController < ApplicationController

    def new
        @vendorsweet = VendorSweet.new
        @sweets = Sweets.all 
        @vendors = Vendor.all 
    end 

    def create 
        @vendorsweet = VendorSweet.create(vs_permitted_params)
        @vendor = Vendor.find(@vendorsweet.vendor_id)
        if @vendorsweet.valid? 
           
            redirect_to @vendor
        else 

        end 


    end 

    private

    def vs_permitted_params
     params.require(:vendorsweet).permit!
    end 
end
