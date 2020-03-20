class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new
    end

    def show
        @vendor_sweet = VendorSweet.find(params([:id])
    end

    def create
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        if @vendor_sweet.save
            redirect_to vendor_path(@vendor_sweet.sweet.id)
        else
            flash[:errors]= @vendor_sweet.errors.full_mesages
            redirect_to new_vendor_path
    end

    private

    def vendor_sweet
        params.require(:vendor_sweet).permit(:vendor_id, :)
    end
    
end
