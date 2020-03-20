class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end
  def show
    @vendor = Vendor.find(params[:id])
    redirect_to vendors_path
  end
end
