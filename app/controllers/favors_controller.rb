class FavorsController < ApplicationController
  before_action :set_favor, only: [:show, :edit, :update, :destroy]

  # GET /favors
  # GET /favors.json
  def index
    @favors = Favor.all
    @hash = Gmaps4rails.build_markers(@favors) do |favor, marker|
      marker.lat favor.latitude
      marker.lng favor.longitude
    end
  end

  # GET /favors/1
  # GET /favors/1.json
  def show
  end

  # GET /favors/new
  def new
    @favor = Favor.new
  end

  # GET /favors/1/edit
  def edit
  end

  # POST /favors
  # POST /favors.json
  def create
    @favor = Favor.new(favor_params)

    respond_to do |format|
      if @favor.save
        format.html { redirect_to @favor, notice: 'Favor was successfully created.' }
        format.json { render :show, status: :created, location: @favor }
      else
        format.html { render :new }
        format.json { render json: @favor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favors/1
  # PATCH/PUT /favors/1.json
  def update
    respond_to do |format|
      if @favor.update(favor_params)
        format.html { redirect_to @favor, notice: 'Favor was successfully updated.' }
        format.json { render :show, status: :ok, location: @favor }
      else
        format.html { render :edit }
        format.json { render json: @favor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favors/1
  # DELETE /favors/1.json
  def destroy
    @favor.destroy
    respond_to do |format|
      format.html { redirect_to favors_url, notice: 'Favor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favor
      @favor = Favor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favor_params
      params[:favor]
    end
end
