require 'test_helper'

class Piece23sControllerTest < ActionController::TestCase
  setup do
    @piece23 = piece23s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece23s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece23" do
    assert_difference('Piece23.count') do
      post :create, piece23: { name: @piece23.name, pnameform_id: @piece23.pnameform_id, user_id: @piece23.user_id }
    end

    assert_redirected_to piece23_path(assigns(:piece23))
  end

  test "should show piece23" do
    get :show, id: @piece23
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece23
    assert_response :success
  end

  test "should update piece23" do
    patch :update, id: @piece23, piece23: { name: @piece23.name, pnameform_id: @piece23.pnameform_id, user_id: @piece23.user_id }
    assert_redirected_to piece23_path(assigns(:piece23))
  end

  test "should destroy piece23" do
    assert_difference('Piece23.count', -1) do
      delete :destroy, id: @piece23
    end

    assert_redirected_to piece23s_path
  end
end
