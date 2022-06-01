class FranchisesController < ApplicationController
  before_action :set_franchise, only: %i[ show edit update destroy ]

  # GET /franchises or /franchises.json
  def index
    @franchises = Franchise.all
  end

  # GET /franchises/1 or /franchises/1.json
  def show
  end

  # GET /franchises/new
  def new
    @franchise = Franchise.new
  end

  # GET /franchises/1/edit
  def edit
  end

  # POST /franchises or /franchises.json
  def create
    @franchise = Franchise.new(franchise_params)

    respond_to do |format|
      if @franchise.save
        format.html { redirect_to franchise_url(@franchise), notice: "Franchise was successfully created." }
        format.json { render :show, status: :created, location: @franchise }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @franchise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /franchises/1 or /franchises/1.json
  def update
    respond_to do |format|
      if @franchise.update(franchise_params)
        format.html { redirect_to franchise_url(@franchise), notice: "Franchise was successfully updated." }
        format.json { render :show, status: :ok, location: @franchise }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @franchise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /franchises/1 or /franchises/1.json
  def destroy
    @franchise.destroy

    respond_to do |format|
      format.html { redirect_to franchises_url, notice: "Franchise was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_franchise
      @franchise = Franchise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def franchise_params
      params.require(:franchise).permit(:name)
    end
end
