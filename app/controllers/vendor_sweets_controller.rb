class VendorSweetsController < ApplicationController
    
    def index 
        @vendorsweets = VendorSweet.all
    end

    def show
        @vendorsweet = VendorSweet.find(params[:id])
        
    end
    
    def edit
    end

    def new
        @vendorsweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end 

    def create 
        @vendorsweet = VendorSweet.create(vendor_sweet_params)
        if @vendorsweet
            redirect_to vendor_sweet_path(@vendorsweet)
        else 
            flash[:errors] = @vendorsweet.errors.full_messages
            redirect_to new_vendor_sweet_path
        end
    end

    def update 
        @vendorsweet = VendorSweet.find(params[:id])
        @vendorsweet.update
        redirect_to vendor_sweet_path(@vendorsweet)
    end

    def destroy 
        @vendorsweet = VendorSweet.find(params[:id])
        @vendorsweet.destroy
    end 

    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end

end