class LSurveysController < ApplicationController
  before_action :set_l_survey, only: [:show, :edit, :update, :destroy]

  # GET /l_surveys
  # GET /l_surveys.json
  def index
    @l_surveys = LSurvey.all
  end

  # GET /l_surveys/1
  # GET /l_surveys/1.json
  def show
  end

  # GET /l_surveys/new
  def new
    @l_survey = LSurvey.new
  end

  # GET /l_surveys/1/edit
  def edit
  end

  # POST /l_surveys
  # POST /l_surveys.json
  def create
    @l_survey = LSurvey.new(l_survey_params)

    respond_to do |format|
      if @l_survey.save
        format.html { redirect_to @l_survey, notice: 'L survey was successfully created.' }
        format.json { render :show, status: :created, location: @l_survey }
      else
        format.html { render :new }
        format.json { render json: @l_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /l_surveys/1
  # PATCH/PUT /l_surveys/1.json
  def update
    respond_to do |format|
      if @l_survey.update(l_survey_params)
        format.html { redirect_to @l_survey, notice: 'L survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @l_survey }
      else
        format.html { render :edit }
        format.json { render json: @l_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /l_surveys/1
  # DELETE /l_surveys/1.json
  def destroy
    @l_survey.destroy
    respond_to do |format|
      format.html { redirect_to l_surveys_url, notice: 'L survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_l_survey
      @l_survey = LSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def l_survey_params
      params.require(:l_survey).permit(:data, :street_num, :street_ord, :street_name, :city, :zip, :state, :size, :deposit, :minimum_occupancy_time, :restrictions, :rented, :rent)
    end
end
