class CellarController < ApplicationController
  def index
    @items = Item.all
    @categories = Category.all
    @wines = @items.map do | item |
    types_of_wine = []
    types_of_wine << item.category
    types_of_wine.flatten.uniq
    end
    @wine_categories = @wines.flatten.uniq
  end

  def show
    if current_user
      @user = User.find(current_user)
    end
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "Added a wine to your cellar."
      redirect_to cellar_index_path
    else
      render :new
      flash[:notice] = "Please try again."
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :price, :category, :region)
  end
end
