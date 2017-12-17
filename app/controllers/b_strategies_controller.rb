class BStrategiesController < ApplicationController
  before_action :set_b_strategy, only: [:show, :edit, :update, :destroy]

  # GET /b_strategies
  # GET /b_strategies.json
  def index
    @b_strategies = BStrategy.all
  end

  # GET /b_strategies/1
  # GET /b_strategies/1.json
  def show
  end

  # GET /b_strategies/new
  def new
    @b_strategy = BStrategy.new
  end

  # GET /b_strategies/1/edit
  def edit
  end

  # POST /b_strategies
  # POST /b_strategies.json
  def create
    @b_strategy = BStrategy.new(b_strategy_params)

    respond_to do |format|
      if @b_strategy.save
        format.html { redirect_to @b_strategy, notice: 'B strategy was successfully created.' }
        format.json { render :show, status: :created, location: @b_strategy }
      else
        format.html { render :new }
        format.json { render json: @b_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_strategies/1
  # PATCH/PUT /b_strategies/1.json
  def update
    # raise params.inspect
# @b_strategy,.update(:address_attributes => {:city => 'Hobart'})

    respond_to do |format|
      if @b_strategy.update(b_strategy_params)
        format.html { redirect_to @b_strategy, notice: 'B strategy was successfully updated.' }
        format.json { render :show, status: :ok, location: @b_strategy }
      else
        format.html { render :edit }
        format.json { render json: @b_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_strategies/1
  # DELETE /b_strategies/1.json
  def destroy
    @b_strategy.destroy
    respond_to do |format|
      format.html { redirect_to b_strategies_url, notice: 'B strategy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_strategy
      @b_strategy = BStrategy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def b_strategy_params
      params.require(:b_strategy).permit(:max_price,
      :target_price, :best_price, :first_price, :max_down_payment, 
      :first_down_payment, :financed_amount, :interest_rate, :loan_points,
      :term_limit, :payment, :cash_flow, :prospect_id,:comments, loan_type_attributes: [:b_strategy_id, :apr])
    end
end
