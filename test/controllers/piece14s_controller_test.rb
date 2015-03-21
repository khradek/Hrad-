require 'test_helper'

class Piece14sControllerTest < ActionController::TestCase
  setup do
    @piece14 = piece14s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece14s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece14" do
    assert_difference('Piece14.count') do
      post :create, piece14: { name: @piece14.name, pnameform_id: @piece14.pnameform_id, user_id: @piece14.user_id }
    end

    assert_redirected_to piece14_path(assigns(:piece14))
  end

  test "should show piece14" do
    get :show, id: @piece14
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece14
    assert_response :success
  end

  test "should update piece14" do
    patch :update, id: @piece14, piece14: { name: @piece14.name, pnameform_id: @piece14.pnameform_id, user_id: @piece14.user_id }
    assert_redirected_to piece14_path(assigns(:piece14))
  end

  test "should destroy piece14" do
    assert_difference('Piece14.count', -1) do
      delete :destroy, id: @piece14
    end

    assert_redirected_to piece14s_path
  end
end
