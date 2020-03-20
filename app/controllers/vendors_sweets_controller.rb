class VendorsSweetsController < ApplicationController
	def new 
		@vendors_sweet = VendorsSweet.new
	end

	def create 
		@vendors_sweet = VendorsSweet.create(vendors_sweet_params)
		if @vendors_sweet.valid?
			redirect_to vendor_path(@vendors_sweet.vendor_id)
		else 
			flash[:errors] = @vendors_sweet.errors.full_messages
			redirect_to new_vendors_sweet_path
		end
	end

	private

	def vendors_sweet_params
		params.require(:vendors_sweet).permit!
	end
end
  