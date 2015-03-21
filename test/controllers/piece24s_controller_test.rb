require 'test_helper'

class Piece24sControllerTest < ActionController::TestCase
  setup do
    @piece24 = piece24s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece24s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece24" do
    assert_difference('Piece24.count') do
      post :create, piece24: { name: @piece24.name, pnameform_id: @piece24.pnameform_id, user_id: @piece24.user_id }
    end

    assert_redirected_to piece24_path(assigns(:piece24))
  end

  test "should show piece24" do
    get :show, id: @piece24
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece24
    assert_response :success
  end

  test "should update piece24" do
    patch :update, id: @piece24, piece24: { name: @piece24.name, pnameform_id: @piece24.pnameform_id, user_id: @piece24.user_id }
    assert_redirected_to piece24_path(assigns(:piece24))
  end

  test "should destroy piece24" do
    assert_difference('Piece24.count', -1) do
      delete :destroy, id: @piece24
    end

    assert_redirected_to piece24s_path
  end
end
