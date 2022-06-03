class UsersController < ApplicationController
  before_action :set_user

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @items = Item.where("creator_id = ?", @user.id)
    @auctions = Auction.where(item_id: @items)
    @item = Item.new
    @user = current_user
  end

  def edit
  end

  def update
    respond_to do |format|
      if top_up_params && @user.update(credit: @user.credit += top_up_params["credit"].to_i)
        format.html { redirect_to user_url(@user), notice: "Credit was successfully topped up!" }
      else
        render :edit
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def top_up_params
    params.require(:user).permit(:credit)
  end
end
