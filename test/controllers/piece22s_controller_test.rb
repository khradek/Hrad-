require 'test_helper'

class Piece22sControllerTest < ActionController::TestCase
  setup do
    @piece22 = piece22s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece22s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece22" do
    assert_difference('Piece22.count') do
      post :create, piece22: { name: @piece22.name, pnameform_id: @piece22.pnameform_id, user_id: @piece22.user_id }
    end

    assert_redirected_to piece22_path(assigns(:piece22))
  end

  test "should show piece22" do
    get :show, id: @piece22
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece22
    assert_response :success
  end

  test "should update piece22" do
    patch :update, id: @piece22, piece22: { name: @piece22.name, pnameform_id: @piece22.pnameform_id, user_id: @piece22.user_id }
    assert_redirected_to piece22_path(assigns(:piece22))
  end

  test "should destroy piece22" do
    assert_difference('Piece22.count', -1) do
      delete :destroy, id: @piece22
    end

    assert_redirected_to piece22s_path
  end
end
