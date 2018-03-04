class OkrsController < ApplicationController
  before_action :set_okr, only: [:show, :edit, :update, :destroy]

  # GET /okrs
  # GET /okrs.json
  def index
    @okrs = Okr.all

     # respond_to do |format|
      # format.html # index.html.erb
      # format.json { render json: @okrs }
    # end
  end

  # GET /okrs/1
  # GET /okrs/1.json
  def show
    @okr = Okr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @okr }
    end
  end

  # GET /okrs/new
  def new
    @okr = Okr.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @okr }
    end
  end

  # GET /okrs/1/edit
  def edit
    @okr = Okr.find(params[:id])
  end

  # POST /okrs
  # POST /okrs.json
  def create
    @okr = Okr.new(okr_params)

    respond_to do |format|
      if @okr.save
        format.html { redirect_to @okr, notice: 'Okr was successfully created.' }
        format.json { render :show, status: :created, location: @okr }
      else
        format.html { render :new }
        format.json { render json: @okr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /okrs/1
  # PATCH/PUT /okrs/1.json
  def update
    respond_to do |format|
      if @okr.update(okr_params)
        format.html { redirect_to @okr, notice: 'Okr was successfully updated.' }
        format.json { render :show, status: :ok, location: @okr }
      else
        format.html { render :edit }
        format.json { render json: @okr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /okrs/1
  # DELETE /okrs/1.json
  def destroy
    @okr.destroy
    respond_to do |format|
      format.html { redirect_to okrs_url, notice: 'Okr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_okr
      @okr = Okr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def okr_params
      params.require(:okr).permit(:Objects_num, :Objects, :KR1, :KR2, :KR3, :KR_COMPLETENESS, :WEIGHT, :COF_INDEX, :Objects_G, :KR1_G, :KR2_G, :KR_G_COMPLETENESS, :KR_G_WEIGHT, :KR_G_COF_INDEX, :Objects_T, :KR1_T, :KR2_T, :KR_T_COMPLETENESS, :KR_T_WEIGHT, :KR_T_COF_INDEX, :VISION, :MISSION, :STRATEGY)
    end
end
