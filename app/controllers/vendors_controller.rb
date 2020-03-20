class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    price_sum = VendorSweet.all.reduce(0){|sum,x| sum + x.price}
    @price_avg = price_sum / VendorSweet.all.length
  end

  def show 
    @vendor = Vendor.find(params[:id])
    vs_arr = VendorSweet.all.select{|vs| vs.vendor_id == @vendor.id}
    @sweets = vs_arr.map {|vs| Sweet.find(vs.sweet_id)}
  end
end
