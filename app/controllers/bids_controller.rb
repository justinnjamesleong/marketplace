class BidsController < ApplicationController
  before_action :set_bid, only: %i[show edit update destroy]

  # GET /bids or /bids.json
  def index
    @auction = Auction.find(params[:auction_id])
    @bids = Bid.all
  end

  # GET /bids/1 or /bids/1.json
  def show
  end

  # GET /bids/new
  def new
    @auction = Auction.find(params[:auction_id])
    @bid = Bid.new
  end

  # GET /bids/1/edit
  def edit
    @auction = Auction.find(params[:auction_id])
  end

  # POST /bids or /bids.json
  def create
    @bid = Bid.new(bid_params)
    @bid.buyer = current_user
    if @bid.save
      redirect_to auction_bids_path
    else
      render 'new'
    end
  end
  # PATCH/PUT /bids/1 or /bids/1.json
  def update
    if @bid.update(bid_params)
      redirect_to auction_bids_path(@bid)
    else
      render 'edit'
    end
  end

  # DELETE /bids/1 or /bids/1.json
  def destroy
    @bid = Bid.find(params[:id])
    @bid.destroy
    redirect_to auctions_path(@bid.restaurant)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bid_params
      params.require(:bid).permit(:buyer_id, :bid_amount, :bid_time, :auction_id)
    end
end
