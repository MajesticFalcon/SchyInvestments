require 'test_helper'

class MotivationsControllerTest < ActionController::TestCase
  setup do
    @motivation = motivations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motivations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motivation" do
    assert_difference('Motivation.count') do
      post :create, motivation: { name: @motivation.name, value: @motivation.value }
    end

    assert_redirected_to motivation_path(assigns(:motivation))
  end

  test "should show motivation" do
    get :show, id: @motivation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motivation
    assert_response :success
  end

  test "should update motivation" do
    patch :update, id: @motivation, motivation: { name: @motivation.name, value: @motivation.value }
    assert_redirected_to motivation_path(assigns(:motivation))
  end

  test "should destroy motivation" do
    assert_difference('Motivation.count', -1) do
      delete :destroy, id: @motivation
    end

    assert_redirected_to motivations_path
  end
end
