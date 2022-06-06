class UsersController < ApplicationController
  before_action :set_user

  def index
    @user = User.all
  end

  def show
    redirect_to current_user, notice: "Unauthorized access" if @user.nil? || @user.id != current_user.id
    @items = Item.where("creator_id = ?", @user.id) rescue nil
    @auctions = Auction.where(item_id: @items) rescue nil
    @bids = Bid.where(buyer_id: @user.id) rescue nil
    @item = Item.new
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
    @user = User.find(params[:id]) rescue nil
  end

  # Only allow a list of trusted parameters through.
  def top_up_params
    params.require(:user).permit(:credit)
  end
end
