class VendorSweetsController < ApplicationController

    def new
        @vender_sweet=VendorSweet.new()
    end

    def create
    end

end
