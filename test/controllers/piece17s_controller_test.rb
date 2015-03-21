require 'test_helper'

class Piece17sControllerTest < ActionController::TestCase
  setup do
    @piece17 = piece17s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece17s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece17" do
    assert_difference('Piece17.count') do
      post :create, piece17: { name: @piece17.name, pnameform_id: @piece17.pnameform_id, user_id: @piece17.user_id }
    end

    assert_redirected_to piece17_path(assigns(:piece17))
  end

  test "should show piece17" do
    get :show, id: @piece17
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece17
    assert_response :success
  end

  test "should update piece17" do
    patch :update, id: @piece17, piece17: { name: @piece17.name, pnameform_id: @piece17.pnameform_id, user_id: @piece17.user_id }
    assert_redirected_to piece17_path(assigns(:piece17))
  end

  test "should destroy piece17" do
    assert_difference('Piece17.count', -1) do
      delete :destroy, id: @piece17
    end

    assert_redirected_to piece17s_path
  end
end
