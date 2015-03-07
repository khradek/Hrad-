require 'test_helper'

class Piece3sControllerTest < ActionController::TestCase
  setup do
    @piece3 = piece3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece3" do
    assert_difference('Piece3.count') do
      post :create, piece3: { name: @piece3.name, user_id: @piece3.user_id }
    end

    assert_redirected_to piece3_path(assigns(:piece3))
  end

  test "should show piece3" do
    get :show, id: @piece3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece3
    assert_response :success
  end

  test "should update piece3" do
    patch :update, id: @piece3, piece3: { name: @piece3.name, user_id: @piece3.user_id }
    assert_redirected_to piece3_path(assigns(:piece3))
  end

  test "should destroy piece3" do
    assert_difference('Piece3.count', -1) do
      delete :destroy, id: @piece3
    end

    assert_redirected_to piece3s_path
  end
end
