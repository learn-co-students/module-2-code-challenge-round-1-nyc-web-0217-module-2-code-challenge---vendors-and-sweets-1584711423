class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end
  def show 
    find_sweet
  end

  private 

  def find_sweet 
    @sweet = Sweet.find(params[:id])
  end
end
