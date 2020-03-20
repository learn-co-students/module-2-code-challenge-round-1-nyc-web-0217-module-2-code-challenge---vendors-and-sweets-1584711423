class VendorSweetsController < ApplicationController

    def index
      @vendorsweets = Vendor.all
    end
  
  end
  