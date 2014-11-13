require 'test_helper'

class VehicleReservationsControllerTest < ActionController::TestCase
  setup do
    @vehicle_reservation = vehicle_reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_reservation" do
    assert_difference('VehicleReservations.count') do
      post :create, vehicle_reservation: {  }
    end

    assert_redirected_to vehicle_reservation_path(assigns(:vehicle_reservation))
  end

  test "should show vehicle_reservation" do
    get :show, id: @vehicle_reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_reservation
    assert_response :success
  end

  test "should update vehicle_reservation" do
    patch :update, id: @vehicle_reservation, vehicle_reservation: {  }
    assert_redirected_to vehicle_reservation_path(assigns(:vehicle_reservation))
  end

  test "should destroy vehicle_reservation" do
    assert_difference('VehicleReservations.count', -1) do
      delete :destroy, id: @vehicle_reservation
    end

    assert_redirected_to vehicle_reservations_path
  end
end
