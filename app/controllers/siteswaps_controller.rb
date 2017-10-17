class SiteswapsController < ApplicationController
  before_action :set_siteswap, only: [:show, :edit, :update, :destroy]

  # GET /siteswaps
  # GET /siteswaps.json
  def index
    @siteswaps = Siteswap.all
  end

  # GET /siteswaps/1
  # GET /siteswaps/1.json
  def show
  end

  # GET /siteswaps/new
  def new
    @siteswap = Siteswap.new
  end

  # GET /siteswaps/1/edit
  def edit
  end

  # POST /siteswaps
  # POST /siteswaps.json
  def create
    @siteswap = Siteswap.new(siteswap_params)

    respond_to do |format|
      if @siteswap.save
        format.html { redirect_to @siteswap, notice: 'Siteswap was successfully created.' }
        format.json { render :show, status: :created, location: @siteswap }
      else
        format.html { render :new }
        format.json { render json: @siteswap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /siteswaps/1
  # PATCH/PUT /siteswaps/1.json
  def update
    respond_to do |format|
      if @siteswap.update(siteswap_params)
        format.html { redirect_to @siteswap, notice: 'Siteswap was successfully updated.' }
        format.json { render :show, status: :ok, location: @siteswap }
      else
        format.html { render :edit }
        format.json { render json: @siteswap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siteswaps/1
  # DELETE /siteswaps/1.json
  def destroy
    @siteswap.destroy
    respond_to do |format|
      format.html { redirect_to siteswaps_url, notice: 'Siteswap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siteswap
      @siteswap = Siteswap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def siteswap_params
      params.require(:siteswap).permit(:name, :description, :difficulty, :image_url)
    end
end
