require 'test_helper'

class PScalesControllerTest < ActionController::TestCase
  setup do
    @p_scale = p_scales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_scales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_scale" do
    assert_difference('PScale.count') do
      post :create, p_scale: { name: @p_scale.name, value: @p_scale.value }
    end

    assert_redirected_to p_scale_path(assigns(:p_scale))
  end

  test "should show p_scale" do
    get :show, id: @p_scale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_scale
    assert_response :success
  end

  test "should update p_scale" do
    patch :update, id: @p_scale, p_scale: { name: @p_scale.name, value: @p_scale.value }
    assert_redirected_to p_scale_path(assigns(:p_scale))
  end

  test "should destroy p_scale" do
    assert_difference('PScale.count', -1) do
      delete :destroy, id: @p_scale
    end

    assert_redirected_to p_scales_path
  end
end
