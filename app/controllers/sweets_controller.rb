class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
  end 

  def edit
  end

  def create 
    @sweet = Sweet.create(params[:id])
        if @sweet
            redirect_to sweet_path(@sweet)
        else 
            flash[:errors] = @sweet.errors.full_messages
            redirect_to new_sweet_path
        end
  end 

  def update 
    @sweet = Sweet.find(params[:id])
    @sweet.update
    redirect_to sweet_path(@sweet)
  end 
  
  def destroy 
    @sweet = Sweet.find(params[:id])
    @sweet.destroy
  end 
end
