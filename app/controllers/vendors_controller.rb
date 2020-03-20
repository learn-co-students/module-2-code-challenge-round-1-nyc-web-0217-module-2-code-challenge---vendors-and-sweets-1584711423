class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show 
    @vendor = Vendor.find(params[:id])
     = VemdorSweets.all.select(|vs| vs.vendor_id == @vendor.id)
  end
end
