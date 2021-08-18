class ItemsController < ApplicationController
  def index
  end

  #def new
  #end

  #def create
  #end

  private

  def items_params
    params.require(:item).permit(:title, :image, :description, :category_id, :status_id, :shopping_charges_id, :shopping_area_id, :days_to_ship_id, :price).merge(user_id: current_user.id)
  end
end
