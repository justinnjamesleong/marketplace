class AuctionsController < ApplicationController
  before_action :set_auction, only: %i[show edit update destroy]

  # GET /auctions or /auctions.json
  def index
    @auctions = Auction.all
  end

  # GET /auctions/1 or /auctions/1.json
  def show
  end

  # GET /auctions/new
  def new
    @auction = Auction.new
  end

  # GET /auctions/1/edit
  def edit
  end

  # POST /auctions or /auctions.json
  def create
    @auction = Auction.new(auction_params)
    # @item = auction_params[:item]
    # raise
    if @auction.save
      redirect_to auction_path(@auction)
    else
      render 'new'
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
    params.require(:auction).permit(:start_time, :end_time, :item_id, :minimum_bid)
  end
end
