class CompsController < ApplicationController
  before_action :set_comp, only: [:show, :edit, :update, :destroy]

  # GET /comps
  # GET /comps.json
  def index
    @comps = current_user.comps
  end

  # GET /comps/1
  # GET /comps/1.json
  def show
  end

  # GET /comps/new
  def new
    @comp = Comp.new
  end

  # GET /comps/1/edit
  def edit
  end

  # POST /comps
  # POST /comps.json
  def create
    @comp = current_user.comps.build(comp_params)

    respond_to do |format|
      if @comp.save
        format.html { redirect_to @comp, notice: 'Comp was successfully created.' }
        format.json { render :show, status: :created, location: @comp }
      else
        format.html { render :new }
        format.json { render json: @comp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comps/1
  # PATCH/PUT /comps/1.json
  def update
    respond_to do |format|
      if @comp.update(comp_params)
        format.html { redirect_to @comp, notice: 'Comp was successfully updated.' }
        format.json { render :show, status: :ok, location: @comp }
      else
        format.html { render :edit }
        format.json { render json: @comp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comps/1
  # DELETE /comps/1.json
  def destroy
    @comp.destroy
    respond_to do |format|
      format.html { redirect_to comps_url, notice: 'Comp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comp
      @comp = Comp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comp_params
      params.require(:comp).permit(:street_num, :street_name, :street_ord, :city, :state, :zip, :purchase_price, :prospect_id)
    end
end
