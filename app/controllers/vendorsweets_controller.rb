class VendorsweetsController < ApplicationController

    def new
      @vendorsweet  = VendorSweet.new
    end

    def create 
      @vendorsweet = VendorSweet.new(vendorsweet_params)
    if @vendorsweet.save
        redirect_to @vendor
    else 
        render :new
    end
end

    def index
        @vendorsweets = VendorSweet.all
    end






    private 

    def vendorsweet_params
        params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
    end

  
  end
  