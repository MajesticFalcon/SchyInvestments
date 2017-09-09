class PScalesController < ApplicationController
  before_action :set_p_scale, only: [:show, :edit, :update, :destroy]

  # GET /p_scales
  # GET /p_scales.json
  def index
    @p_scales = PScale.all
  end

  # GET /p_scales/1
  # GET /p_scales/1.json
  def show
  end

  # GET /p_scales/new
  def new
    @p_scale = PScale.new
  end

  # GET /p_scales/1/edit
  def edit
  end

  # POST /p_scales
  # POST /p_scales.json
  def create
    @p_scale = PScale.new(p_scale_params)

    respond_to do |format|
      if @p_scale.save
        format.html { redirect_to @p_scale, notice: 'P scale was successfully created.' }
        format.json { render :show, status: :created, location: @p_scale }
      else
        format.html { render :new }
        format.json { render json: @p_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_scales/1
  # PATCH/PUT /p_scales/1.json
  def update
    respond_to do |format|
      if @p_scale.update(p_scale_params)
        format.html { redirect_to @p_scale, notice: 'P scale was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_scale }
      else
        format.html { render :edit }
        format.json { render json: @p_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_scales/1
  # DELETE /p_scales/1.json
  def destroy
    @p_scale.destroy
    respond_to do |format|
      format.html { redirect_to p_scales_url, notice: 'P scale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_scale
      @p_scale = PScale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_scale_params
      params.require(:p_scale).permit(:name, :value)
    end
end
