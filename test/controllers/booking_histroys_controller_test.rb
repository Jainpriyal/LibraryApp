require 'test_helper'

class BookingHistroysControllerTest < ActionController::TestCase
  setup do
    @booking_histroy = booking_histroys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booking_histroys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booking_histroy" do
    assert_difference('BookingHistroy.count') do
      post :create, booking_histroy: { date: @booking_histroy.date, from: @booking_histroy.from, to: @booking_histroy.to }
    end

    assert_redirected_to booking_histroy_path(assigns(:booking_histroy))
  end

  test "should show booking_histroy" do
    get :show, id: @booking_histroy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booking_histroy
    assert_response :success
  end

  test "should update booking_histroy" do
    patch :update, id: @booking_histroy, booking_histroy: { date: @booking_histroy.date, from: @booking_histroy.from, to: @booking_histroy.to }
    assert_redirected_to booking_histroy_path(assigns(:booking_histroy))
  end

  test "should destroy booking_histroy" do
    assert_difference('BookingHistroy.count', -1) do
      delete :destroy, id: @booking_histroy
    end

    assert_redirected_to booking_histroys_path
  end
end
