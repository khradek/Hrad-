require 'test_helper'

class Piece25sControllerTest < ActionController::TestCase
  setup do
    @piece25 = piece25s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece25s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece25" do
    assert_difference('Piece25.count') do
      post :create, piece25: { name: @piece25.name, pnameform_id: @piece25.pnameform_id, user_id: @piece25.user_id }
    end

    assert_redirected_to piece25_path(assigns(:piece25))
  end

  test "should show piece25" do
    get :show, id: @piece25
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece25
    assert_response :success
  end

  test "should update piece25" do
    patch :update, id: @piece25, piece25: { name: @piece25.name, pnameform_id: @piece25.pnameform_id, user_id: @piece25.user_id }
    assert_redirected_to piece25_path(assigns(:piece25))
  end

  test "should destroy piece25" do
    assert_difference('Piece25.count', -1) do
      delete :destroy, id: @piece25
    end

    assert_redirected_to piece25s_path
  end
end
