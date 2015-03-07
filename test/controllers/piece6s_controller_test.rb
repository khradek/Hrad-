require 'test_helper'

class Piece6sControllerTest < ActionController::TestCase
  setup do
    @piece6 = piece6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece6" do
    assert_difference('Piece6.count') do
      post :create, piece6: { name: @piece6.name, user_id: @piece6.user_id }
    end

    assert_redirected_to piece6_path(assigns(:piece6))
  end

  test "should show piece6" do
    get :show, id: @piece6
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece6
    assert_response :success
  end

  test "should update piece6" do
    patch :update, id: @piece6, piece6: { name: @piece6.name, user_id: @piece6.user_id }
    assert_redirected_to piece6_path(assigns(:piece6))
  end

  test "should destroy piece6" do
    assert_difference('Piece6.count', -1) do
      delete :destroy, id: @piece6
    end

    assert_redirected_to piece6s_path
  end
end
