class ShoppingController < ApplicationController
  def index
    @shoppings = Shop.all
  end
  def show
    @listOfItems = Shop.find(params[:id])
  end
  def new
    @listOfItems = Shop.new
  end
  def create
    @listOfItems = Shop.new(product_params)

    if @listOfItems.save()
      redirect_to "/shopping"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @listOfItems = Shop.find(params[:id])
  end

  def update
    @listOfItems = Shop.find(params[:id])
    if @listOfItems.update(product_params)
      redirect_to "/shopping"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @listOfItems = Shop.find(params[:id])
    @listOfItems.destroy

    redirect_to "/shopping", status: :see_other
  end

  private
  def product_params
    # Permit itemName and description as strings, and itemPrice as an integer
    params.require(:shop).permit(:itemName, :description, :itemPrice)

  end
end
