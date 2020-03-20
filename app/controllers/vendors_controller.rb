class VendorsController < ApplicationController

  def index 
    @vendors = Vendor.all
end

def show
    @vendor = Vendor.find(params[:id])
    @sweets = Sweet.all
    @sweet = Sweet.find(params[:id])    
end

def edit 
end

def new
    @vendor = Vendor.new
    @vendors = Vendor.all
    @vendors = Sweet.all
end 

def create 
    @vendor = Vendor.create(params[:id])
    if @vendor
        redirect_to vendor_path(@vendor)
    else 
        flash[:errors] = @vendor.errors.full_messages
        redirect_to new_vendor_path
    end
end

def update 
    @vendor = Vendor.find(params[:id])
    @vendor.update
    redirect_to vendor_path(@vendor)
end

def destroy 
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
end 

end
