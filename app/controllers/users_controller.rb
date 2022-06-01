class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @item = Item.where("creator_id = ?", @user.id)
  end
end
