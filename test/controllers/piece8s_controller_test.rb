require 'test_helper'

class Piece8sControllerTest < ActionController::TestCase
  setup do
    @piece8 = piece8s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece8s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece8" do
    assert_difference('Piece8.count') do
      post :create, piece8: { name: @piece8.name, user_id: @piece8.user_id }
    end

    assert_redirected_to piece8_path(assigns(:piece8))
  end

  test "should show piece8" do
    get :show, id: @piece8
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece8
    assert_response :success
  end

  test "should update piece8" do
    patch :update, id: @piece8, piece8: { name: @piece8.name, user_id: @piece8.user_id }
    assert_redirected_to piece8_path(assigns(:piece8))
  end

  test "should destroy piece8" do
    assert_difference('Piece8.count', -1) do
      delete :destroy, id: @piece8
    end

    assert_redirected_to piece8s_path
  end
end
