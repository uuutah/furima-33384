class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:destroy]
 
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)
  end

  private

  def items_params
    params.require(:item).permit(:title, :image, :description, :category_id, :status_id, :shopping_charges_id, :shopping_area_id, :days_to_ship_id, :price).merge(user_id: current_user.id)
  end
end
