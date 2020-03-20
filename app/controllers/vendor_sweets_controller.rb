class VendorSweetsController < ApplicationController

    def new
        @vendorsweet = VendorSweet.new
        @sweets = Sweet.all 
        @vendors = Vendor.all 
    end 

    def create 
        @vendorsweet = VendorSweet.create(vs_permitted_params)
        @vendor = Vendor.find(@vendorsweet.vendor_id)
        if @vendorsweet.valid? 
           
            redirect_to @vendor
        else 
            redirect_to new_vendor_sweet_path
        end 


    end 

    private

    def vs_permitted_params
     params.require(:vendor_sweet).permit!
    end 
end
