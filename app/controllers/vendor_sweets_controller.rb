class VendorSweetsController < ApplicationController

    def new
        @vs = VendorSweet.new
    end

    def create
        vs = VendorSweet.create(vs_params)

        if vs.valid?
            redirect_to vendors_path
        else
            flash[:errors] = vs.errors.full_messages
            redirect_to new_vendorsweet_path
        end
    end

    private

    def vs_params
        params.require(:vendor_sweet).permit!
    end
end
