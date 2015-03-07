require 'test_helper'

class Piece4sControllerTest < ActionController::TestCase
  setup do
    @piece4 = piece4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece4" do
    assert_difference('Piece4.count') do
      post :create, piece4: { name: @piece4.name, user_id: @piece4.user_id }
    end

    assert_redirected_to piece4_path(assigns(:piece4))
  end

  test "should show piece4" do
    get :show, id: @piece4
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece4
    assert_response :success
  end

  test "should update piece4" do
    patch :update, id: @piece4, piece4: { name: @piece4.name, user_id: @piece4.user_id }
    assert_redirected_to piece4_path(assigns(:piece4))
  end

  test "should destroy piece4" do
    assert_difference('Piece4.count', -1) do
      delete :destroy, id: @piece4
    end

    assert_redirected_to piece4s_path
  end
end
