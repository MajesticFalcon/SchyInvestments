class MotivationsController < ApplicationController
  before_action :set_motivation, only: [:show, :edit, :update, :destroy]

  # GET /motivations
  # GET /motivations.json
  def index
    @motivations = Motivation.all
  end

  # GET /motivations/1
  # GET /motivations/1.json
  def show
  end

  # GET /motivations/new
  def new
    @motivation = Motivation.new
  end

  # GET /motivations/1/edit
  def edit
  end

  # POST /motivations
  # POST /motivations.json
  def create
    @motivation = Motivation.new(motivation_params)

    respond_to do |format|
      if @motivation.save
        format.html { redirect_to @motivation, notice: 'Motivation was successfully created.' }
        format.json { render :show, status: :created, location: @motivation }
      else
        format.html { render :new }
        format.json { render json: @motivation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motivations/1
  # PATCH/PUT /motivations/1.json
  def update
    respond_to do |format|
      if @motivation.update(motivation_params)
        format.html { redirect_to @motivation, notice: 'Motivation was successfully updated.' }
        format.json { render :show, status: :ok, location: @motivation }
      else
        format.html { render :edit }
        format.json { render json: @motivation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motivations/1
  # DELETE /motivations/1.json
  def destroy
    @motivation.destroy
    respond_to do |format|
      format.html { redirect_to motivations_url, notice: 'Motivation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motivation
      @motivation = Motivation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motivation_params
      params.require(:motivation).permit(:name, :value)
    end
end
