class ItemsController < ApplicationController
  def create
    # create the item with the params here...
    # 1. create the item with the right name...
    @item = Item.create

    @item.name = params[:item][:name]

    # 2. associate the item with the current user...
    @item.user = current_user

    @item.save
    # 3. make sure you save the item...
    redirect_to root_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end
end
