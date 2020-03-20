class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

    def show
      @sweet = Sweet.find(params[:id])

      @vendor_sweet = VendorSweet.new
      @vendor = Vendor.all
    end

    def create
      @sweet = Sweet.new(sweet_params)
       @sweet.save
      redirect_to sweet_path(@sweet)
     
    end
private

def sweet_params
params.require(:sweet).permit(:name)
end

end
