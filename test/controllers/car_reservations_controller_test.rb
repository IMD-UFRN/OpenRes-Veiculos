require 'test_helper'

class CarReservationsControllerTest < ActionController::TestCase
  setup do
    @car_reservation = car_reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_reservation" do
    assert_difference('CarReservation.count') do
      post :create, car_reservation: {  }
    end

    assert_redirected_to car_reservation_path(assigns(:car_reservation))
  end

  test "should show car_reservation" do
    get :show, id: @car_reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_reservation
    assert_response :success
  end

  test "should update car_reservation" do
    patch :update, id: @car_reservation, car_reservation: {  }
    assert_redirected_to car_reservation_path(assigns(:car_reservation))
  end

  test "should destroy car_reservation" do
    assert_difference('CarReservation.count', -1) do
      delete :destroy, id: @car_reservation
    end

    assert_redirected_to car_reservations_path
  end
end
