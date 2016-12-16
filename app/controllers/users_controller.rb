class UsersController < ApplicationController
  def show
    @user = current_user
    @items = @user.items
    @item = Item.new
  end

  def create
    @items = Items.new
  end
end
