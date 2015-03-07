require 'test_helper'

class Piece10sControllerTest < ActionController::TestCase
  setup do
    @piece10 = piece10s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece10s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece10" do
    assert_difference('Piece10.count') do
      post :create, piece10: { name: @piece10.name, user_id: @piece10.user_id }
    end

    assert_redirected_to piece10_path(assigns(:piece10))
  end

  test "should show piece10" do
    get :show, id: @piece10
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece10
    assert_response :success
  end

  test "should update piece10" do
    patch :update, id: @piece10, piece10: { name: @piece10.name, user_id: @piece10.user_id }
    assert_redirected_to piece10_path(assigns(:piece10))
  end

  test "should destroy piece10" do
    assert_difference('Piece10.count', -1) do
      delete :destroy, id: @piece10
    end

    assert_redirected_to piece10s_path
  end
end
