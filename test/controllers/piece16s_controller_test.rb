require 'test_helper'

class Piece16sControllerTest < ActionController::TestCase
  setup do
    @piece16 = piece16s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece16s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece16" do
    assert_difference('Piece16.count') do
      post :create, piece16: { name: @piece16.name, pnameform_id: @piece16.pnameform_id, user_id: @piece16.user_id }
    end

    assert_redirected_to piece16_path(assigns(:piece16))
  end

  test "should show piece16" do
    get :show, id: @piece16
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece16
    assert_response :success
  end

  test "should update piece16" do
    patch :update, id: @piece16, piece16: { name: @piece16.name, pnameform_id: @piece16.pnameform_id, user_id: @piece16.user_id }
    assert_redirected_to piece16_path(assigns(:piece16))
  end

  test "should destroy piece16" do
    assert_difference('Piece16.count', -1) do
      delete :destroy, id: @piece16
    end

    assert_redirected_to piece16s_path
  end
end
