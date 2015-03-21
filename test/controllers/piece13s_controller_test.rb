require 'test_helper'

class Piece13sControllerTest < ActionController::TestCase
  setup do
    @piece13 = piece13s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece13s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece13" do
    assert_difference('Piece13.count') do
      post :create, piece13: { name: @piece13.name, pnameform_id: @piece13.pnameform_id, user_id: @piece13.user_id }
    end

    assert_redirected_to piece13_path(assigns(:piece13))
  end

  test "should show piece13" do
    get :show, id: @piece13
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece13
    assert_response :success
  end

  test "should update piece13" do
    patch :update, id: @piece13, piece13: { name: @piece13.name, pnameform_id: @piece13.pnameform_id, user_id: @piece13.user_id }
    assert_redirected_to piece13_path(assigns(:piece13))
  end

  test "should destroy piece13" do
    assert_difference('Piece13.count', -1) do
      delete :destroy, id: @piece13
    end

    assert_redirected_to piece13s_path
  end
end
