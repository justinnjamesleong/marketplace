class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]

  # GET /items or /items.json
  def index
    @items = Item.all
  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
    @user = current_user
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items or /items.json
  def create
    @user = current_user
    @item = Item.new(item_params)
    @item.creator = current_user
    @item.owner = current_user

    # raise
    if @item.save
      redirect_to @user, notice: "Item was successfully updated."
    else
      render 'items/new'
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    @user = current_user
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @user, notice: "Item was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @user = current_user
    if Auction.where(item_id: @item)
      redirect_to @user, notice: "Item on auction cannot be deleted."
    else
      @item.destroy
      respond_to do |format|
        format.html { redirect_to @user, warning: "Item was successfully destroyed." }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :description, :franchise_id, :item_type_id, :photo)
    end
end
