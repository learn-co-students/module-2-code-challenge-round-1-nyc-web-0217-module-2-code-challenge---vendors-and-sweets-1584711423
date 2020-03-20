class VendorsweetsController < ApplicationController
 
    def show
        @vendorsweet = Vendorsweet.find(params[:id])
    end

    def new
        @vendorsweet = Vendorsweet.new
    end
   
    def create
        @vendorsweet = Vendorsweet.create(vendorsweet_params)
        redirect_to show_vendors_path
    end
end
