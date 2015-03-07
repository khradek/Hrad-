require 'test_helper'

class Piece1sControllerTest < ActionController::TestCase
  setup do
    @piece1 = piece1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece1" do
    assert_difference('Piece1.count') do
      post :create, piece1: { name: @piece1.name, user_id: @piece1.user_id }
    end

    assert_redirected_to piece1_path(assigns(:piece1))
  end

  test "should show piece1" do
    get :show, id: @piece1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece1
    assert_response :success
  end

  test "should update piece1" do
    patch :update, id: @piece1, piece1: { name: @piece1.name, user_id: @piece1.user_id }
    assert_redirected_to piece1_path(assigns(:piece1))
  end

  test "should destroy piece1" do
    assert_difference('Piece1.count', -1) do
      delete :destroy, id: @piece1
    end

    assert_redirected_to piece1s_path
  end
end
