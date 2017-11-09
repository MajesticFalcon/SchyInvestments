class ProspectsController < ApplicationController
  before_action :set_prospect, only: [:show, :edit, :update, :destroy]
  # GET /prospects
  # GET /prospects.json
  def index
    @prospects = current_user.prospects
  end

  # GET /prospects/1
  # GET /prospects/1.json
  def show
    #Variable Expenses
      @vacancy_percentage = 0.1
      @repair_percentage = 0.05
      @cap_ex = 0.05
    #Purchase
      @max_price = @prospect.b_strategy.max_price
      @closing_cost = @max_price * 0.02
    #Aquisition
      @down_payment = @max_price * 0.035
      @loan_amount = @max_price - @down_payment
      @total_amount = @loan_amount + @closing_cost
      @cash_in = @closing_cost + @down_payment
    #Fixed Expenses
      @monthly_interest = @loan_amount * 0.045 / 12
      @monthly_principal = @loan_amount / 360
      @monthly_tax = 738 / 12
      @mortgage_payment = @monthly_interest + @monthly_principal
      @insurance_payment = @loan_amount * 0.01 / 12
      @pmi_payment = @loan_amount * 0.010 /12
      @total_fixed = @mortgage_payment + @insurance_payment + @monthly_tax + @pmi_payment
    #Income
      @gross_income = 1300
      @net_income = @gross_income - @mortgage_payment - ( @gross_income * @vacancy_percentage) - ( @gross_income * @repair_percentage ) - ( @gross_income * @cap_ex ) - @insurance_payment - @monthly_tax
      @fifty_rule = ( @gross_income / 2 ) - @mortgage_payment 
      @one_percent_rule = @loan_amount * 0.01
      @two_percent_rule = @loan_amount * 0.02
    #Variable Expenses
      @vacancy_payment = @vacancy_percentage * @gross_income
      @repair_payment = @repair_percentage * @gross_income
      @cap_ex_payment = @cap_ex * @gross_income
      @total_variable = @vacancy_payment + @repair_payment + @cap_ex_payment
      @total_expense = @total_variable + @total_fixed
    #Gmaps4Rails
      @hash = Gmaps4rails.build_markers(@prospect) do |house, marker|
        marker.lat house.latitude
        marker.lng house.longitude
      end
  end

  # GET /prospects/new
  def new
    @prospect = current_user.prospects.build
  end

  # GET /prospects/1/edit
  def edit
  end

  # POST /prospects
  # POST /prospects.json
  def create
    @prospect = current_user.prospects.build(prospect_params)

    respond_to do |format|
      if @prospect.save
        format.html { redirect_to @prospect, notice: 'Prospect was successfully created.' }
        format.json { render :show, status: :created, location: @prospect }
      else
        format.html { render :new }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospects/1
  # PATCH/PUT /prospects/1.json
  def update
    respond_to do |format|
      if @prospect.update(prospect_params)
        format.html { redirect_to @prospect, notice: 'Prospect was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospect }
      else
        format.html { render :edit }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospects/1
  # DELETE /prospects/1.json
  def destroy
    @prospect.destroy
    respond_to do |format|
      format.html { redirect_to prospects_url, notice: 'Prospect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospect
      @prospect = Prospect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospect_params
      params.require(:prospect).permit(:name, :street_num, :street_name, :street_ord, :city, :zip, :state, :purchase_price, :repair_cost, :investor_id, :active, :expense_id, :motivation_id, :b_strategy_id, :gross_rent, expenses_attributes: [:id, :name, :_destroy, :prospect_id, :value, :active, :frequency, :upfront])
    end
end
