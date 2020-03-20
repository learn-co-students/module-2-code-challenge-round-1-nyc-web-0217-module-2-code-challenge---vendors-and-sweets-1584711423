class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.all.find(params[:id])
    vs_arr = VendorSweet.all.select{|vs| vs.sweet_id == @sweet.id}
    @vendors = vs_arr.map {|vs| Vendor.find(vs.vendor_id)}
  end

end
