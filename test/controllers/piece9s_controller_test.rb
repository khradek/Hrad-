require 'test_helper'

class Piece9sControllerTest < ActionController::TestCase
  setup do
    @piece9 = piece9s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece9s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece9" do
    assert_difference('Piece9.count') do
      post :create, piece9: { name: @piece9.name, user_id: @piece9.user_id }
    end

    assert_redirected_to piece9_path(assigns(:piece9))
  end

  test "should show piece9" do
    get :show, id: @piece9
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece9
    assert_response :success
  end

  test "should update piece9" do
    patch :update, id: @piece9, piece9: { name: @piece9.name, user_id: @piece9.user_id }
    assert_redirected_to piece9_path(assigns(:piece9))
  end

  test "should destroy piece9" do
    assert_difference('Piece9.count', -1) do
      delete :destroy, id: @piece9
    end

    assert_redirected_to piece9s_path
  end
end
