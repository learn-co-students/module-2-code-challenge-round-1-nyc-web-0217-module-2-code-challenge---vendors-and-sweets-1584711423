class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
  end
  
end
