class ItemtypesController < ApplicationController
  before_action :set_itemtype, only: %i[ show edit update destroy ]

  # GET /itemtypes or /itemtypes.json
  def index
    @itemtypes = ItemType.all
  end

  # GET /itemtypes/1 or /itemtypes/1.json
  def show
  end

  # GET /itemtypes/new
  def new
    @itemtype = ItemType.new
  end

  # GET /itemtypes/1/edit
  def edit
  end

  # POST /itemtypes or /itemtypes.json
  def create
    @itemtype = ItemType.new(itemtype_params)

    respond_to do |format|
      if @itemtype.save
        format.html { redirect_to itemtype_url(@itemtype), notice: "ItemType was successfully created." }
        format.json { render :show, status: :created, location: @itemtype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @itemtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itemtypes/1 or /itemtypes/1.json
  def update
    respond_to do |format|
      if @itemtype.update(itemtype_params)
        format.html { redirect_to itemtype_url(@itemtype), notice: "ItemType was successfully updated." }
        format.json { render :show, status: :ok, location: @itemtype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @itemtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemtypes/1 or /itemtypes/1.json
  def destroy
    @itemtype.destroy

    respond_to do |format|
      format.html { redirect_to itemtypes_url, notice: "ItemType was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemtype
      @itemtype = ItemType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def itemtype_params
      params.require(:itemtype).permit(:name)
    end
end
