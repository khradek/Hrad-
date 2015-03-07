require 'test_helper'

class Piece5sControllerTest < ActionController::TestCase
  setup do
    @piece5 = piece5s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece5s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece5" do
    assert_difference('Piece5.count') do
      post :create, piece5: { name: @piece5.name, user_id: @piece5.user_id }
    end

    assert_redirected_to piece5_path(assigns(:piece5))
  end

  test "should show piece5" do
    get :show, id: @piece5
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece5
    assert_response :success
  end

  test "should update piece5" do
    patch :update, id: @piece5, piece5: { name: @piece5.name, user_id: @piece5.user_id }
    assert_redirected_to piece5_path(assigns(:piece5))
  end

  test "should destroy piece5" do
    assert_difference('Piece5.count', -1) do
      delete :destroy, id: @piece5
    end

    assert_redirected_to piece5s_path
  end
end
