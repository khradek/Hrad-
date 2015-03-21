require 'test_helper'

class Piece12sControllerTest < ActionController::TestCase
  setup do
    @piece12 = piece12s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece12s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece12" do
    assert_difference('Piece12.count') do
      post :create, piece12: { name: @piece12.name, pnameform_id: @piece12.pnameform_id, user_id: @piece12.user_id }
    end

    assert_redirected_to piece12_path(assigns(:piece12))
  end

  test "should show piece12" do
    get :show, id: @piece12
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece12
    assert_response :success
  end

  test "should update piece12" do
    patch :update, id: @piece12, piece12: { name: @piece12.name, pnameform_id: @piece12.pnameform_id, user_id: @piece12.user_id }
    assert_redirected_to piece12_path(assigns(:piece12))
  end

  test "should destroy piece12" do
    assert_difference('Piece12.count', -1) do
      delete :destroy, id: @piece12
    end

    assert_redirected_to piece12s_path
  end
end
