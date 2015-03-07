require 'test_helper'

class Piece7sControllerTest < ActionController::TestCase
  setup do
    @piece7 = piece7s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece7s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece7" do
    assert_difference('Piece7.count') do
      post :create, piece7: { name: @piece7.name, user_id: @piece7.user_id }
    end

    assert_redirected_to piece7_path(assigns(:piece7))
  end

  test "should show piece7" do
    get :show, id: @piece7
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece7
    assert_response :success
  end

  test "should update piece7" do
    patch :update, id: @piece7, piece7: { name: @piece7.name, user_id: @piece7.user_id }
    assert_redirected_to piece7_path(assigns(:piece7))
  end

  test "should destroy piece7" do
    assert_difference('Piece7.count', -1) do
      delete :destroy, id: @piece7
    end

    assert_redirected_to piece7s_path
  end
end
