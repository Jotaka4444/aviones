require 'test_helper'

class PersonalFlightsControllerTest < ActionController::TestCase
  setup do
    @personal_flight = personal_flights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_flights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_flight" do
    assert_difference('PersonalFlight.count') do
      post :create, personal_flight: { flight_id: @personal_flight.flight_id, personal_id: @personal_flight.personal_id }
    end

    assert_redirected_to personal_flight_path(assigns(:personal_flight))
  end

  test "should show personal_flight" do
    get :show, id: @personal_flight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_flight
    assert_response :success
  end

  test "should update personal_flight" do
    patch :update, id: @personal_flight, personal_flight: { flight_id: @personal_flight.flight_id, personal_id: @personal_flight.personal_id }
    assert_redirected_to personal_flight_path(assigns(:personal_flight))
  end

  test "should destroy personal_flight" do
    assert_difference('PersonalFlight.count', -1) do
      delete :destroy, id: @personal_flight
    end

    assert_redirected_to personal_flights_path
  end
end
