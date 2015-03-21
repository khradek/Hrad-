require 'test_helper'

class Piece11sControllerTest < ActionController::TestCase
  setup do
    @piece11 = piece11s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece11s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece11" do
    assert_difference('Piece11.count') do
      post :create, piece11: { name: @piece11.name, pnameform_id: @piece11.pnameform_id, user_id: @piece11.user_id }
    end

    assert_redirected_to piece11_path(assigns(:piece11))
  end

  test "should show piece11" do
    get :show, id: @piece11
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece11
    assert_response :success
  end

  test "should update piece11" do
    patch :update, id: @piece11, piece11: { name: @piece11.name, pnameform_id: @piece11.pnameform_id, user_id: @piece11.user_id }
    assert_redirected_to piece11_path(assigns(:piece11))
  end

  test "should destroy piece11" do
    assert_difference('Piece11.count', -1) do
      delete :destroy, id: @piece11
    end

    assert_redirected_to piece11s_path
  end
end
