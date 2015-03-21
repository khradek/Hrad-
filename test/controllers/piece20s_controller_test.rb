require 'test_helper'

class Piece20sControllerTest < ActionController::TestCase
  setup do
    @piece20 = piece20s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece20s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece20" do
    assert_difference('Piece20.count') do
      post :create, piece20: { name: @piece20.name, pnameform_id: @piece20.pnameform_id, user_id: @piece20.user_id }
    end

    assert_redirected_to piece20_path(assigns(:piece20))
  end

  test "should show piece20" do
    get :show, id: @piece20
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece20
    assert_response :success
  end

  test "should update piece20" do
    patch :update, id: @piece20, piece20: { name: @piece20.name, pnameform_id: @piece20.pnameform_id, user_id: @piece20.user_id }
    assert_redirected_to piece20_path(assigns(:piece20))
  end

  test "should destroy piece20" do
    assert_difference('Piece20.count', -1) do
      delete :destroy, id: @piece20
    end

    assert_redirected_to piece20s_path
  end
end
