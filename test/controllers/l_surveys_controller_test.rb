require 'test_helper'

class LSurveysControllerTest < ActionController::TestCase
  setup do
    @l_survey = l_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:l_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create l_survey" do
    assert_difference('LSurvey.count') do
      post :create, l_survey: { city: @l_survey.city, data: @l_survey.data, deposit: @l_survey.deposit, minimum_occupancy_time: @l_survey.minimum_occupancy_time, rent: @l_survey.rent, rented: @l_survey.rented, restrictions: @l_survey.restrictions, size: @l_survey.size, state: @l_survey.state, street_name: @l_survey.street_name, street_num: @l_survey.street_num, street_ord: @l_survey.street_ord, zip: @l_survey.zip }
    end

    assert_redirected_to l_survey_path(assigns(:l_survey))
  end

  test "should show l_survey" do
    get :show, id: @l_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @l_survey
    assert_response :success
  end

  test "should update l_survey" do
    patch :update, id: @l_survey, l_survey: { city: @l_survey.city, data: @l_survey.data, deposit: @l_survey.deposit, minimum_occupancy_time: @l_survey.minimum_occupancy_time, rent: @l_survey.rent, rented: @l_survey.rented, restrictions: @l_survey.restrictions, size: @l_survey.size, state: @l_survey.state, street_name: @l_survey.street_name, street_num: @l_survey.street_num, street_ord: @l_survey.street_ord, zip: @l_survey.zip }
    assert_redirected_to l_survey_path(assigns(:l_survey))
  end

  test "should destroy l_survey" do
    assert_difference('LSurvey.count', -1) do
      delete :destroy, id: @l_survey
    end

    assert_redirected_to l_surveys_path
  end
end
