require 'test_helper'

class BStrategiesControllerTest < ActionController::TestCase
  setup do
    @b_strategy = b_strategies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_strategies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_strategy" do
    assert_difference('BStrategy.count') do
      post :create, b_strategy: { best_price: @b_strategy.best_price, cash_flow: @b_strategy.cash_flow, comments: @b_strategy.comments, financed_amount: @b_strategy.financed_amount, first_down_payment: @b_strategy.first_down_payment, first_price: @b_strategy.first_price, interest_rate: @b_strategy.interest_rate, loan_points: @b_strategy.loan_points, max_down_payment: @b_strategy.max_down_payment, max_price: @b_strategy.max_price, payment: @b_strategy.payment, target_price: @b_strategy.target_price, term_limit: @b_strategy.term_limit }
    end

    assert_redirected_to b_strategy_path(assigns(:b_strategy))
  end

  test "should show b_strategy" do
    get :show, id: @b_strategy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_strategy
    assert_response :success
  end

  test "should update b_strategy" do
    patch :update, id: @b_strategy, b_strategy: { best_price: @b_strategy.best_price, cash_flow: @b_strategy.cash_flow, comments: @b_strategy.comments, financed_amount: @b_strategy.financed_amount, first_down_payment: @b_strategy.first_down_payment, first_price: @b_strategy.first_price, interest_rate: @b_strategy.interest_rate, loan_points: @b_strategy.loan_points, max_down_payment: @b_strategy.max_down_payment, max_price: @b_strategy.max_price, payment: @b_strategy.payment, target_price: @b_strategy.target_price, term_limit: @b_strategy.term_limit }
    assert_redirected_to b_strategy_path(assigns(:b_strategy))
  end

  test "should destroy b_strategy" do
    assert_difference('BStrategy.count', -1) do
      delete :destroy, id: @b_strategy
    end

    assert_redirected_to b_strategies_path
  end
end
