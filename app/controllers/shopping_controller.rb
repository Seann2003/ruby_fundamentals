class ShoppingController < ApplicationController
  def index
    @shop = Shop.all
  end
  def show
    @listOfItems = Shop.find(params[:id])
  end
  def create
    
  end
  def edit

  end
  def update

  end
  def destroy
    
  end
end
