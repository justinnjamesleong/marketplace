class AuctionsController < ApplicationController
  before_action :set_auction, only: %i[show edit update destroy]

  # GET /auctions or /auctions.json
  def index
    @auctions = Auction.all
  end

  # GET /auctions/1 or /auctions/1.json
  def show
    @bids = Bid.where("auction_id=?", params[:id])
    @bid = Bid.new(auction_id: params[:id])
  end

  # GET /auctions/new
  def new
    @auction = Auction.new
    @user = current_user
    @items = Item.where("creator_id = ?", @user.id)
    @item = Item.find(params[:item_id]) rescue false
    if @items.where(id: params[:item_id]).length.zero?
      redirect_to @user, notice: "You are not the creator of this item or the item does not exist!"
    else
      @item
    end
  end

  # GET /auctions/1/edit
  def edit
  end

  # POST /auctions or /auctions.json
  def create
    @user = current_user
    @auction = Auction.new(auction_params)
    @auction.item = Item.find(params[:item_id])
    if params[:end_time] < params[:start_time]
      redirect_to new_item_auction(@auction.item), notice: "End Time must be later than start time!"
    elsif Auction.where(item_id: @auction.item_id).length.zero?
      @auction.save
      redirect_to auction_path(@auction)
    else
      redirect_to @user, notice: "Auction already exists"
    end
  end

  # PATCH/PUT /auctions/1 or /auctions/1.json
  def update
    if @auction.update(auction_params)
      redirect_to auction_path(@auction)
    else
      render 'edit'
    end
  end

  # DELETE /auctions/1 or /auctions/1.json
  def destroy
    @auction.destroy

    redirect_to auctions_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_auction
    @auction = Auction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def auction_params
    params.require(:auction).permit(:start_time, :end_time,:minimum_bid)
  end
end
